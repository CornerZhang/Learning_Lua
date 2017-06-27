local t = {}
local m = { a = "and", b = "Li Lei", c = "Han Meimei" }

setmetatable(t, {__index = m})		-- 表{__index = m}作为t的元表

for k,v in pairs(t) do
	print("有值吗?")
	print(k,"=>",v)
end

print("---------------------")
print(t.b, t.a, t.c)



print("---------------------")
local function add(t1,t2)
	--‘#’运算符取表长度
	assert(#t1 == #t2)
	local length = #t1
	for i = 1,length do
		t1[i] = t1[i] + t2[i]
	end
	return t1
end

--setmetatable返回被设置的表
t1 = setmetatable({1,2,3},{__add = add})
t2 = setmetatable({10,20,30},{__add = add})

for k,v in  pairs(t1) do
	print(k,"=>",v)
end

for k,v in  pairs(t2) do
	print(k,"=>",v)
end

print("---------两元表相加--------------")
t1 = t1 + t2
for i = 1 ,#t1 do
	print(t1[i])
end