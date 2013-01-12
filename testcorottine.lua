co = coroutine.create(function ()

		print("HelloWold")
	end)
print(co)
print(coroutine.status(co))
coroutine.resume(co)

coo = coroutine.create(function (a,b,c)
		for i=1,10 do
			print("coo",i,a,b,c)
			coroutine.yield(a,b,c)
		end

	end)
coroutine.resume(coo)
print(coroutine.status(coo))

print(coroutine.resume(coo,1,2,3))


