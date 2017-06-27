a = {}

for i=-200, 100, 1 do
	a[i] = 0
end

print(#a)
print(a[-200])
print(a[100])


-- Matrix
matrix = {}
for i=1, 4 do
	matrix[i] = {}
	for j=1, 4 do
		matrix[i][j] = 0
	end
end

matrix_tiny = {}
xdim, ydim = 4,4
for i=1,ydim do
	for j=1, xdim do
		matrix_tiny[(i-1)*xdim+j]=0
	end
end

-- Single List
node = nil
v = 9
for i=1, 12 do	-- append twelve 9
	node = { next = node, value = v }
end

local list = node
while list do
	print(list.value)
	
	list = list.next
end

-- Text read
--[[
local t= {}
for line in io.lines() do
	t[#t+1] = line
end
text = table.concat(t,"\n") .. "\n"
print(text)
--]]
