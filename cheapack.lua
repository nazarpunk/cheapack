--print(('>I4'):unpack('hfoo')) --> 1751543663
--print(('>I4'):pack(1751543663)) --> hfoo
local customCodeTag = [[--CUSTOM_CODE]]
local cheapack      = {}

local function FileContent(path)
	local file = io.open(path, 'rb') -- r read mode and b binary mode
	if not file then return nil end
	local content = file:read '*a' -- *a or *all reads the whole file
	file:close()
	return content
end

local function readInt(file)
	return ('<I4'):unpack(file:read(4))
end

function cheapack.build(root, map, src)
	root = [[C:\Users\nazarpunk\IdeaProjects\Death-League]]
	map  = 'map.w3x'
	src  = { 'lib', 'global', 'ability', 'hero', 'init.lua' }
	
	print '\n--> code concat'
	local path = {}
	for i = 1, #src do
		local suffix = src[i]:match "[^.]+$" == 'lua' and '' or '\\*.lua'
		for dir in io.popen([[dir "]] .. root .. '\\src\\' .. src[i] .. suffix .. [[" /s /b /o:gn]]):lines() do
			table.insert(path, dir)
		end
	end
	local code = customCodeTag
	for i = 1, #path do
		--print(path[i])
		code = code .. '\n' .. FileContent(path[i])
	end
	code      = code .. '\n' .. customCodeTag
	
	-- patch .wct
	local wct = assert(io.open(root .. '\\' .. map .. '\\war3map.wct'))
	local a   = readInt(wct)
	local b   = readInt(wct)
	print(a, b)


end

return cheapack