local version       = '2.0.0'

local customCodeTag = '--CUSTOM_CODE'
local editorExe     = 'World Editor.exe'
local gameExe       = 'Warcraft III.exe'
local color         = { black = '\27[30m', red = '\27[31m', green = '\27[32m', yellow = '\27[33m', blue = '\27[34m', magenta = '\27[35m', cyan = '\27[36m', white = '\27[37m', reset = '\27[0m' }

local function log(str)
	print('[' .. color.white .. os.date('%c') .. color.reset .. '] ' .. str)
	return false
end

local function help(str)
	return 'https://github.com/nazarpunk/cheapack#' .. str
end

local function declension (num, d1, d4, d5)
	num = math.abs(num) % 100
	if num >= 11 and num <= 19 then return d5 end
	num = num % 10
	if num == 1 then return d1 end
	if num > 1 and num <= 4 then return d4 end
	return d5
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
	local start = file.counter
	local stringbyte = string.byte
	local content = file.content

	for index = start, #content do
		file.counter = file.counter + 1

		if stringbyte(content, index) == 0 then
			local out = content:sub(start, index - 1)
			table.insert(t, out)
			return out
		end
	end

	return nil
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
	local content = fileGetContent(path, 'rb')
	local file = {
		content = content,
		counter = 1,
		read = function(self, num)
			if self.counter >= #self.content then return nil end

			local result = self.content:sub(self.counter, self.counter + num - 1)

			self.counter = self.counter + num
			return result
		end,
		close = function() end
	}

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
		log(color.cyan .. 'Определяем папку проекта' .. color.yellow .. '\n' .. param.project .. color.reset .. '\n' .. help('project'))
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
	local code                 = customCodeTag
	local pathlistDublicate    = {}
	local pathlistDublicateLen = 0
	for i = 1, #pathlist do
		local path = pathlist[i]
		if pathlistDublicate[path] == nil then
			pathlistDublicate[path] = true
			code                    = code .. '\r\n' .. fileGetContent(path, 'rb')
			print(color.yellow .. path .. color.reset)
		else
			pathlistDublicateLen = pathlistDublicateLen + 1
			print(color.red .. path .. color.white .. ' [игнорирован]' .. color.reset)
		end
	end
	code = code .. '\r\n' .. customCodeTag
	if pathlistDublicateLen > 0 then
		log('Обнаружено ' .. color.red .. pathlistDublicateLen .. color.reset .. ' ' .. declension(pathlistDublicateLen, 'повторное включение', 'повторных включений', 'повторных включений'))
	end
	
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
	local luaContent           = fileGetContent(war3mapLuaPath, 'rb')
	local luaFile              = io.open(war3mapLuaPath, 'wb')
	local luaContentNew, count = luaContent:gsub(customCodeTag .. '.*' .. customCodeTag, code)
	if (count == 0) then
		log(color.yellow .. 'war3map.lua' .. color.reset .. ' не был изменён.\n' .. color.red .. 'Откройте и сохраните карту в редакторе!' .. color.reset)
	end
	luaFile:write(luaContentNew):close()
	log(color.cyan .. 'Сборка успешно завершена' .. color.reset)
	
	-- param: export
	if param.export ~= nil then
		local json         = require 'json'
		local exportFolder = param.project .. '\\' .. param.export
		if not isFileExists(exportFolder) then
			os.execute('mkdir ' .. exportFolder)
		end
		wctFile = io.open(exportFolder .. '\\war3map.wct.json', 'wb')
		wctFile:write(json.encode(parseWct(war3mapWctPath))):close()
	end
	
	-- param: run
	param.run = param.run or os.getenv('run') or nil
	if param.run == 'editor' or param.run == 'game' then
		
		-- param: game
		if param.game == nil then
			local registry = require 'registry'
			local key      = [[HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Warcraft III]]
			local keys     = registry.getkey(key)
			if keys == nil then
				log(color.red .. 'Ключ реестра не содержит пути к игре\n' .. color.white .. key .. color.reset)
				return false
			end
			for _, v in pairs(keys.values) do
				if v.name == 'InstallPath' or v.name == 'InstallSource' or v.name == 'InstallLocation' then
					param.game = v.value
				end
			end
			param.game = param.game .. '\\_retail_\\x86_64'
		end
		
		local file
		if param.run == 'editor' then
			file = param.game .. '\\' .. editorExe
			log(color.cyan .. 'Запускаем редактор' .. color.reset)
		elseif param.run == 'game' then
			file = param.game .. '\\' .. gameExe
			log(color.cyan .. 'Запускаем игру' .. color.reset)
		end
		local execute = 'start  "" "' .. file .. '" -launch -loadfile "' .. param.project .. '\\' .. param.map .. '"'
		if isFileExists(file) then
			print(color.yellow .. file .. color.reset)
			os.execute(execute)
		else
			log(noFileError .. file .. color.reset)
		end
	end
end
