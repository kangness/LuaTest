function list_iter (t)
	local i = 0
	local n = table.getn(t)
	return function ()
		i = i+1
		if i <= n then return t[i] end
	end
end

t = {1,2,3,4,5,6,7}
iter = list_iter(t)
while true do
	local element = iter()
	if element == nil then
		break
	end
	--print(element)
end

for element in list_iter(t) do
	--print(element)
end


function allwords()
	local line = io.read()
	local pos = 1
	return function ()
		while line do
			local s,e = string.find(line,"%w+",pos)
			if s then
				pos = e + 1
				return string.sub(line,s,e)
			else
				line = io.read()
				pos = 1
			end
		end
		return nil
	end
end


--for word in allwords do
	--print(word)
--end


for k,v in pairs(t) do
	print(k,v)
end

for line in io.lines() do
	io.write(line,"\n\n")
end
