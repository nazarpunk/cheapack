--ver 1.0.4

local customCodeTag = '--CUSTOM_CODE'
local cheapack      = {}

local function exists(file)
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
		if string.byte(v) == 0 then
			table.insert(t, out)
			return out
		end
		out = out .. v
	end
end

local function tableInsertReadInt(t, f)
	local bytes = f:read(4)
	if bytes == nil or string.len(bytes) < 4 then return nil end
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

---@param game string path to game folder, example [[D:\Games\Warcraft III\x86_64]]
---@param root string path to project folder, example [[C:\Users\username\IdeaProjects\Death-League]]
---@param map string path to map from root, example [[map.w3x]]
---@param src table list build files from root
---@param run string run after build: 'editor'|'game'
function cheapack.build(game, root, map, src, run)
	print('[\27[32m' .. os.date('%c') .. '\27[0m] \27[36mStart!\27[0m')
	local pathlist = {}
	if type(src) == 'string' then src = { src } end
	for i = 1, #src do
		local suffix = src[i]:match "[^.]+$" == 'lua' and '' or '\\*.lua'
		local path   = root .. '\\' .. src[i]
		if not exists(path) then
			print('[\27[32m' .. os.date('%c') .. '\27[0m] \27[31mError!')
			print('File not exist: s' .. path .. '\27[0m')
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
	
	print('[\27[32m' .. os.date('%c') .. '\27[0m] \27[36mFinish!\27[0m')
	
	if run == 'editor' then
		local exe = 'World Editor.exe'
		os.execute('start  "" "' .. game .. '\\' .. exe .. '" -loadfile "' .. root .. '\\' .. map .. '"')
		print('[\27[32m' .. os.date('%c') .. '\27[0m] \27[33mRun: ' .. exe .. '\27[0m')
	elseif run == 'game' then
		local exe = 'Warcraft III.exe'
		os.execute('start  "" "' .. game .. '\\' .. exe .. '" -loadfile "' .. root .. '\\' .. map .. '"')
		print('[\27[32m' .. os.date('%c') .. '\27[0m] \27[33mRun:' .. exe .. '\27[0m')
	end
end

return cheapack