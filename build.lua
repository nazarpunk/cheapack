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
		log(color.red .. 'Ошибка!\nЗапущен ' .. processname .. color.reset)
		return true
	end
end

local function getProjectDir()
	return debug.getinfo(3, 'S').source:sub(2):match('(.*/)'):gsub('%/$', ''):gsub('/', '\\')
end

local function getGameDir()
	local reg  = require 'registry'
	local keys = reg.getkey([[HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Warcraft III]])
	for _, v in pairs(keys.values) do
		print(v.name, v.value)
	end
end

print('https://github.com/nazarpunk/cheapack#cheapack ' .. color.blue .. version .. color.reset)

return function(param)
	-- check process
	if checkProcess(editorExe) then return end
	if checkProcess(gameExe) then return end
	
	-- param: fix
	if param == nil then param = {} end
	if type(param) ~= 'table' then param = { param } end
	
	-- param: reforged
	param.reforged = not not param.reforged
	
	-- param: project
	if param.project == nil then
		param.project = getProjectDir()
		log(color.cyan .. 'Определяем папку проекта' .. color.yellow .. '\n' .. param.project .. color.reset)
	end
	
	-- param: src
	log(color.cyan .. 'Начинаем сборку' .. color.reset)
	local pathlist = {}
	if type(param.src) == 'string' then param.src = { param.src } end
	for i = 1, #param.src do
		local suffix = param.src[i]:match "[^.]+$" == 'lua' and '' or '\\*.lua'
		local path   = param.project .. '\\' .. param.src[i]
		if not isFileExists(path) then
			log(color.red .. 'Ошибка! Файл не найден\n' .. color.yellow .. path .. color.reset)
			return
		end
		for dir in io.popen([[dir "]] .. path .. suffix .. [[" /s /b /o:gn]]):lines() do
			table.insert(pathlist, dir)
		end
	end
	local code = customCodeTag
	for i = 1, #pathlist do
		print(color.yellow .. pathlist[i] .. color.reset)
		code = code .. '\r\n' .. fileGetContent(pathlist[i], 'rb')
	end
	code          = code .. '\r\n' .. customCodeTag
	
	-- patch war3map.wct
	local wctPath = param.project .. '\\' .. param.map .. '\\war3map.wct'
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
	local luaPath          = param.project .. '\\' .. param.map .. '\\war3map.lua'
	local luaContent       = fileGetContent(luaPath, 'rb')
	local luaFile          = io.open(luaPath, 'w+')
	local luaContentNew, _ = luaContent:gsub(customCodeTag .. '.*' .. customCodeTag, code):gsub('\r+', '\n'):gsub('\n+', '\n')
	luaFile:write(luaContentNew):close()
	
	log(color.cyan .. 'Сборка успешна' .. color.reset)
	
	if param.run == 'editor' then
		local p = param.reforged and ' -launch' or ''
		os.execute('start  "" "' .. param.game .. '\\' .. editorExe .. '"' .. p .. ' -loadfile "' .. param.project .. '\\' .. param.map .. '"')
		log('\27[33mRun: ' .. editorExe .. '\27[0m')
	elseif param.run == 'game' then
		local p = param.reforged and ' -launch' or ''
		os.execute('start  "" "' .. param.game .. '\\' .. gameExe .. '"' .. p .. ' -loadfile "' .. param.project .. '\\' .. param.map .. '"')
		log('\27[33mRun: ' .. gameExe .. '\27[0m')
	end
end