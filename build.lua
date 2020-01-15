local version       = '1.1.0'

local customCodeTag = '--CUSTOM_CODE'
local editorExe     = 'World Editor.exe'
local gameExe       = 'Warcraft III.exe'
local color         = { black = '\27[30m', red = '\27[31m', green = '\27[32m', yellow = '\27[33m', blue = '\27[34m', magenta = '\27[35m', cyan = '\27[36m', white = '\27[37m', reset = '\27[0m' }

for k, v in pairs(color) do
	--print(v .. k)
end

local function log(str)
	print('[' .. color.white .. os.date('%c') .. color.reset .. '] ' .. str)
end

local function isFileExists(file)
	local ok, _, code = os.rename(file, file)
	if not ok and code == 13 then return true end
	return ok
end

local function fileGetContent(path, mode)
	local file    = assert(io.open(path, mode))
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
		log('\27[31mError! ' .. processname .. ' is running.\27[0m')
		return true
	end
end

local function getProjectDir()
	return debug.getinfo(3, 'S').source:sub(2):match('(.*/)')
end

print('https://github.com/nazarpunk/cheapack#cheapack ' .. color.blue .. version .. color.reset)

return function(param)
	-- fix param
	if param == nil then param = {} end
	if type(param) ~= 'table' then param = { param } end
	
	for k, v in pairs(param) do
		--print(k, v)
	end
	
	local reg  = require 'registry'
	local keys = reg.getkey([[HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Warcraft III]])
	for _, v in pairs(keys.values) do
		print(v.name, v.value)
	end
	
	if true == true then return end
	isReforged = isReforged or false
	
	--print('dir', getRunDir())
	
	log(color.cyan .. 'Начинаем сборку' .. color.reset)
	
	if checkProcess(editorExe) then return end
	if checkProcess(gameExe) then return end
	
	local pathlist = {}
	if type(src) == 'string' then src = { src } end
	for i = 1, #src do
		local suffix = src[i]:match "[^.]+$" == 'lua' and '' or '\\*.lua'
		local path   = root .. '\\' .. src[i]
		if not isFileExists(path) then
			log('\27[31mError!\nFile not exist: s' .. path .. '\27[0m')
			return
		end
		for dir in io.popen([[dir "]] .. path .. suffix .. [[" /s /b /o:gn]]):lines() do
			table.insert(pathlist, dir)
		end
	end
	local code = customCodeTag
	for i = 1, #pathlist do
		local path = pathlist[i]
		print(color.yellow .. i .. color.reset .. ' ' .. path:sub(root:len() + 2))
		code = code .. '\r\n' .. fileGetContent(path, 'rb')
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
	local luaContent       = fileGetContent(luaPath, 'r')
	local luaFile          = io.open(luaPath, 'w+')
	local luaContentNew, _ = luaContent:gsub(customCodeTag .. '.*' .. customCodeTag, code):gsub('[\r|\n]+', '\n')
	luaFile:write(luaContentNew):close()
	
	log(color.cyan .. 'Сборка успешна' .. color.reset)
	
	if run == 'editor' then
		local param = isReforged and ' -launch' or ''
		os.execute('start  "" "' .. game .. '\\' .. editorExe .. '"' .. param .. ' -loadfile "' .. root .. '\\' .. map .. '"')
		log('\27[33mRun: ' .. editorExe .. '\27[0m')
	elseif run == 'game' then
		local param = isReforged and ' -launch' or ''
		os.execute('start  "" "' .. game .. '\\' .. gameExe .. '"' .. param .. ' -loadfile "' .. root .. '\\' .. map .. '"')
		log('\27[33mRun: ' .. gameExe .. '\27[0m')
	end
end