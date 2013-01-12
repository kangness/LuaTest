require("luaXml")

local file = xml.load("test.xml")

local sence = file:find("scene")

if sence ~= nil then
	print(sence)
end

local x = xml.new("root")

x:append("child")[1] = "HelloWorld"
print(x)
