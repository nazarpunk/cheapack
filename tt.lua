Unit = {}
function Unit:new (x, y)
	local unit = {}
	setmetatable(unit, self)
	self.__index = self
	unit.x       = x;
	unit.y       = y;
	return unit
end
function Unit:getXY ()
	return self.x, self.y
end
function Unit:setX(x)
	self.x = x
	return self
end
function Unit:setY(y)
	self.y = y
	return self
end

local u  = Unit:new(10, 15)
local u2 = Unit:new(2, 4)

print(u:getXY())
u:setX(13):setY(3)
print(u:getXY())
