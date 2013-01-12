Class = {}
Class.__index = Class

function Class:new(x,y)
	local temp = {}
	setmetatable(temp,Class)
	temp.x = x;
	temp.y = y
	return temp
end

function Class:test()
	print(self.x,self.y)
end

object = Class:new(10,20)
object:test()
