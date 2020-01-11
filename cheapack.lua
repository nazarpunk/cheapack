--ver 1.0.9

local customCodeTag = '--CUSTOM_CODE'
local editorExe     = 'World Editor.exe'
local gameExe       = 'Warcraft III.exe'
local cheapack      = {}

local function log(str)
	print('[\27[32m' .. os.date('%c') .. '\27[0m] ' .. str)
end

local function fileExists(file)
	local ok, err, code = os.rename(file, file)
	if not ok then
		if code == 13 then
			return true
		end
	end
	return ok, err
end

local function fileGetContent(path)
	local file    = assert(io.open(path, 'rb'))
	local content = file:read '*a'
	file:close()
	return content
end

local function tableInsertReadStr(t, file)
	local out = ''
	while true do
		local v = file:read(1)
		if v == nil then return nil end
		if v:byte() == 0 then
			table.insert(t, out)
			return out
		end
		out = out .. v
	end
end

local function tableInsertReadInt(t, f)
	local bytes = f:read(4)
	if bytes == nil or bytes:len() < 4 then return nil end
	local v = ('<I4'):unpack(bytes)
	table.insert(t, v)
	return v
end

local function parseWct(path)
	local out  = {}
	local file = assert(io.open(path, 'rb'))
	tableInsertReadInt(out, file)
	tableInsertReadInt(out, file)
	tableInsertReadStr(out, file)
	tableInsertReadInt(out, file)
	tableInsertReadStr(out, file)
	while true do
		local item = tableInsertReadInt(out, file)
		if item == nil then break end
		if item > 0 then
			item = tableInsertReadStr(out, file)
			if item == nil then break end
		end
	end
	file:close()
	return out
end

local function checkProcess(processname)
	local filedata = io.popen('tasklist /NH /FO CSV /FI "IMAGENAME eq ' .. processname .. '"')
	local output   = filedata:read()
	filedata:close()
	
	if output:find(processname) == nil then
		return false
	else
		log('\27[31mError! \' .. processname .. \' is running.\27[0m')
		return true
	end
end

---@param game string path to game folder, example [[D:\Games\Warcraft III\x86_64]]
---@param root string path to project folder, example [[C:\Users\username\IdeaProjects\Death-League]]
---@param map string path to map from root, example [[map.w3x]]
---@param src table list build files from root
---@param run string run after build: 'editor'|'game'
---@param isReforged boolean
function cheapack.build(game, root, map, src, run, isReforged)
	isReforged = isReforged or false
	
	log('\27[36mStart!\27[0m')
	
	if checkProcess(editorExe) then return end
	if checkProcess(gameExe) then return end
	
	local pathlist = {}
	if type(src) == 'string' then src = { src } end
	for i = 1, #src do
		local suffix = src[i]:match "[^.]+$" == 'lua' and '' or '\\*.lua'
		local path   = root .. '\\' .. src[i]
		if not fileExists(path) then
			log('\27[31mError!\nFile not exist: s' .. path .. '\27[0m')
			return
		end
		for dir in io.popen([[dir "]] .. path .. suffix .. [[" /s /b /o:gn]]):lines() do
			table.insert(pathlist, dir)
		end
	end
	local code = customCodeTag
	for i = 1, #pathlist do
		code = code .. '\r\n' .. fileGetContent(pathlist[i])
	end
	code          = code .. '\r\n' .. customCodeTag
	
	-- patch war3map.wct
	local wctPath = root .. '\\' .. map .. '\\war3map.wct'
	local wct     = parseWct(wctPath)
	local wctFile = assert(io.open(wctPath, 'wb'))
	wct[4]        = code:len() + 1
	wct[5]        = code
	for i = 1, #wct do
		local data = wct[i]
		if type(data) == 'number' then
			wctFile:write(('<I4'):pack(data))
		elseif type(data) == 'string' then
			wctFile:write(data .. '\0')
		end
	end
	wctFile:close()
	
	-- replace war3map.lua
	local luaPath          = root .. '\\' .. map .. '\\war3map.lua'
	local luaContent       = fileGetContent(luaPath)
	local luaFile          = io.open(luaPath, 'w+')
	local luaContentNew, _ = luaContent:gsub(customCodeTag .. '.*' .. customCodeTag, code)
	luaFile:write(luaContentNew):close()
	
	log('\27[36mFinish!\27[0m')
	
	if run == 'editor' then
		local param = isReforged and '-launch -uid w3_beta' or ''
		os.execute('start  "" "' .. game .. '\\' .. editorExe .. '"' .. param .. ' -loadfile "' .. root .. '\\' .. map .. '"')
		log('\27[33mRun: ' .. editorExe .. '\27[0m')
	elseif run == 'game' then
		local param = isReforged and '-launch' or ''
		os.execute('start  "" "' .. game .. '\\' .. gameExe .. '"' .. param .. ' -loadfile "' .. root .. '\\' .. map .. '"')
		log('\27[33mRun:' .. gameExe .. '\27[0m')
	end
end

return cheapack