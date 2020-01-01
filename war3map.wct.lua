local data    = assert(io.open(path, 'rb'))
local content = data:read('*a')
data:close()

local bytes = {}
for byte in content:gfind('.') do
	table.insert(bytes, ('%02x'):format(byte:byte()))
end

local function readInt()
	if #bytes < 4 then return nil end
	local out = ''
	while #out < 8 do
		out = table.remove(bytes, 1) .. out
	end
	return tonumber(out, 16)
end

local function int2str(int)
	return ('%8.8X'):format(int):gsub('(..)(..)(..)(..)', function(a, b, c, d)
		return d .. c .. b .. a
	end)
end

local function readStr()
	if #bytes == 0 then return nil end
	local out = ''
	while #bytes > 0 do
		local str = table.remove(bytes, 1)
		if str == '00' then return out end
		out = out .. string.char(tonumber(str, 16))
	end
	return out
end
local function str2str(str)
	return str:gsub('.', function(c)
		return ('%02x'):format(string.byte(c))
	end)
end

local function readWct()
	local wct, item = {}
	for i = 1, 2 do
		item = readInt()
		if item == nil then return wct end
		table.insert(wct, item)
	end
	if item == 1 then
		for i = 1, 3 do
			item = i == 2 and readInt() or readStr()
			if item == nil then return wct end
			table.insert(wct, item)
		end
	end
	while #bytes > 0 do
		item = readInt()
		if item == nil then return wct end
		table.insert(wct, item)
		if item > 0 then
			item = readStr()
			if item == nil then return wct end
			table.insert(wct, item)
		end
	end
	return wct
end
local wct = readWct()

for i = 1, #wct do
	local elem = wct[i]
	print(type(elem), elem)
end