--print(('>I4'):unpack('hfoo')) --> 1751543663
--print(('>I4'):pack(1751543663)) --> hfoo
local customCodeTag = [[--CUSTOM_CODE]]
local cheapack      = {}

local function fileGetContent(path)
	local file    = assert(io.open(path, 'rb'))
	local content = file:read '*a'
	file:close()
	return content
end

local function fileWriteInt()

end

local function fileWriteStr()

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
	if bytes == nil then return nil end
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

function cheapack.build(root, map, src)
	root       = [[C:\Users\nazarpunk\IdeaProjects\Death-League]]
	map        = 'map.w3x'
	--src  = { 'lib', 'global', 'ability', 'hero', 'init.lua' }
	src        = { 'init.lua' }
	
	local path = {}
	for i = 1, #src do
		local suffix = src[i]:match "[^.]+$" == 'lua' and '' or '\\*.lua'
		for dir in io.popen([[dir "]] .. root .. '\\src\\' .. src[i] .. suffix .. [[" /s /b /o:gn]]):lines() do
			table.insert(path, dir)
		end
	end
	local code = customCodeTag
	for i = 1, #path do
		code = code .. '\n' .. fileGetContent(path[i])
	end
	code      = code .. '\n' .. customCodeTag
	
	-- patch .wct
	local wct = parseWct(root .. '\\' .. map .. '\\war3map.wct')
	if (#wct >= 5) then
	
	end
end

return cheapack