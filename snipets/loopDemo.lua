local i=0

while i*i < 100000 do
	i = i + 1
end
print(i .. " * " .. i .. "=" .. i*i)

i=0

repeat
	i=i+1
until(i * i >= 100000)
print(i .. " * " .. i .. "=" .. i*i)


local step = 2
local range = 10
for i=1, range, step do
	print( i .. " " .. (i*i) )
end


local numberArray = {106,22,30,48,56,60,70,80,90,109}
for i, v in ipairs(numberArray) do
	if i==3 then break end	-- break out
	print(i ..":" .. v)
end