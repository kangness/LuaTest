local producer
local receive
local send
local consumer



function producer()
	return coroutine.create(function()
		while true do
			local x = io.read()
			send(x)
			print("print form producer",x)
		end
	end)
end

function consumer(prod)
	while true do
		local x = receive(prod)
		io.write(x,"\n")
	end
end


function receive (prod)
	local status,value =  coroutine.resume(prod)
	return value
end


function send (x)
	coroutine.yield(x)
end


function filter (prod)
	return coroutine.create(function()
		local line = 1
		while true do
			local x = receive(prod)
			x= string.format("%5d  %s",line,x)
			send (s)
			line = line +1
		end
	end)
end

p = producer()
--f = filter(p)
consumer(p)
