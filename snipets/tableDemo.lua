local a = {}

local b = {
	x = 1,
	["hello"] = "world!"
}

a["astring"] = "hi, man!"

a[1] = 100

a["a table"] = b

for k, v in pairs(a) do
	print(k,"=>",v);
end

local point = { x=90, y=30 }
print(point)

for name, value in pairs(point) do
	print(name," = ", value)
end

b.x = 12
b.hello = "miss the word"