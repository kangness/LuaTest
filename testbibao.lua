names = {"Peter","Paul","Mary"}
grades = {Mary = 10,Paul = 7,Peter = 8}
table.sort(names,function(n1,n2)
		return grades[n1] > grades[n2]
		end )

function sortbygrade (names,grades)
	table.sort(names,function (n1,n2)
		return grades[n1] > grades[n2]
	end)
end


function newCouner()
	local i = 0
	return function()
		i = i+ 1
		return i
	end
end

c1 = newCouner()

print(c1())
print(c1())

c2 = newCouner()
print(c2())
print(c1())


function digitButton (digit)
	return Button{
		label = digit,
		action = function()
				add_to_display(digit)
				end
	}

end

--do
	--local oldOpen = io.open
	--io.open = function (filename,mode)
--		if access(filename,mod) then
--			return oldOpen(filename,mode)
--		else
--			return nil,"access denied"
--		end
--	end
--end


print(io.open("test.xml","r"))

Lib = {}
Lib.foo = function (x,y) return x-y end
Lib.goo = function (x,y) return x+y end

print(Lib.foo(100,9))


function fact(n)
	if n ==0 then
		return 1
	else
		return n*fact(n-1)
	end
end

print(fact(2))
