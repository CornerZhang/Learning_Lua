local studentList = {"zhang","li","wang","dong"}

for i=1, #studentList do
	print(i..":"..studentList[i])
end

for i,v in pairs(studentList) do
	print(i..":"..v)
end