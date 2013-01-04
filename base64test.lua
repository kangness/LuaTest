require"base64"

print(base64.version)

function test(s)
	local a = base64.encode(s)
	local b = base64.decode(a)
	print(string.len(s),b==s,a,s)
	assert(s == b)
end

local msg = "kangness"
print(msg)
test(msg)

for i=0,9 do
	local s=string.sub("Lua-scripting-language",1,i)
	test(s)
end

function test(p)
	print("testing prefix "..string.len(p))
	for i=0,255 do
		local s=p..string.char(i)
		local a=base64.encode(s)
		local b=base64.decode(a)
		assert(b==s,i)
	end
end


print(msg)
test(msg)

