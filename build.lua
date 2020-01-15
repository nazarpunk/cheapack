local version       = '1.1.2'

local customCodeTag = '--CUSTOM_CODE'
local editorExe     = 'World Editor.exe'
local gameExe       = 'Warcraft III.exe'
local color         = { black = '\27[30m', red = '\27[31m', green = '\27[32m', yellow = '\27[33m', blue = '\27[34m', magenta = '\27[35m', cyan = '\27[36m', white = '\27[37m', reset = '\27[0m' }

for k, v in pairs(color) do
	--print(v .. k)
end

local function log(str)
	print('[' .. color.white .. os.date('%c') .. color.reset .. '] ' .. str)
	return false
end

local function help(str)
	return 'https://github.com/nazarpunk/cheapack#' .. str
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

local function isProcessRun(processname)
	local filedata = io.popen('tasklist /NH /FO CSV /FI "IMAGENAME eq ' .. processname .. '"')
	local output   = filedata:read()
	filedata:close()
	return output:find(processname) ~= nil
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

print(help('cheapack') .. ' ' .. color.blue .. version .. color.reset)

return function(param)
	-- check process
	if isProcessRun(editorExe) then
		return log(color.red .. 'Ошибка! Редактор открыт\n' .. color.yellow .. editorExe .. color.reset)
	end
	if isProcessRun(gameExe) then
		return log(color.red .. 'Ошибка! Игра запущена\n' .. color.yellow .. gameExe .. color.reset)
	end
	
	-- param
	param = param or {}
	if type(param) ~= 'table' then param = { param } end
	param.map      = param.map or 'map.w3x'
	param.src      = param.src or 'src'
	param.reforged = not not param.reforged
	
	-- param: project
	if param.project == nil then
		param.project = getProjectDir()
		log(color.cyan .. 'Определяем папку проекта' .. color.yellow .. '\n' .. param.project .. color.reset)
	end
	if not isFileExists(param.project) then
		return log(color.red .. 'Ошибка! Папка с проектом не найдена\n' .. color.yellow .. param.project .. color.reset .. '\n' .. help('project'))
	end
	
	-- param: map
	local mapFolderPath = param.project .. '\\' .. param.map
	if not isFileExists(mapFolderPath) then
		return log(color.red .. 'Ошибка! Папка с картой не найдена\n' .. color.yellow .. mapFolderPath .. color.reset .. '\n' .. help('map'))
	end
	
	local noFileError    = color.red .. 'Ошибка! Файл не найден\n' .. color.yellow
	-- war3map.wct
	local war3mapWctPath = param.project .. '\\' .. param.map .. '\\war3map.wct'
	if not isFileExists(war3mapWctPath) then return log(noFileError .. war3mapWctPath .. color.reset) end
	
	-- war3map.lua
	local war3mapLuaPath = param.project .. '\\' .. param.map .. '\\war3map.lua'
	if not isFileExists(war3mapWctPath) then return log(noFileError .. war3mapLuaPath .. color.reset) end
	
	-- param: src
	log(color.cyan .. 'Начинаем сборку' .. color.reset)
	local pathlist = {}
	if type(param.src) == 'string' then param.src = { param.src } end
	for i = 1, #param.src do
		local suffix = param.src[i]:match "[^.]+$" == 'lua' and '' or '\\*.lua'
		local path   = param.project .. '\\' .. param.src[i]
		if not isFileExists(path) then return log(noFileError .. path .. color.reset) end
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
	local wct     = parseWct(war3mapWctPath)
	local wctFile = assert(io.open(war3mapWctPath, 'wb'))
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
	local luaContent       = fileGetContent(war3mapLuaPath, 'rb')
	local luaFile          = io.open(war3mapLuaPath, 'wb')
	local luaContentNew, _ = luaContent:gsub(customCodeTag .. '.*' .. customCodeTag, code)
	luaFile:write(luaContentNew):close()
	
	log(color.cyan .. 'Сборка успешно завершена' .. color.reset)
	
	-- run
	if param.run == 'editor' or param.run == 'game' then
		local launch, execute = param.reforged and ' -launch' or ''
		if param.run == 'editor' then
			log(color.cyan .. 'Запускаем редактор')
			execute = 'start  "" "' .. param.game .. '\\' .. editorExe .. '"' .. launch .. ' -loadfile "' .. param.project .. '\\' .. param.map .. '"'
		elseif param.run == 'game' then
			log(color.cyan .. 'Запускаем игру')
			execute = 'start  "" "' .. param.game .. '\\' .. gameExe .. '"' .. launch .. ' -loadfile "' .. param.project .. '\\' .. param.map .. '"'
		end
		print(color.yellow .. execute .. color.reset)
		os.execute(execute)
	end
end