local s1 = "hello"
local s2 = "world"
local s = s1 .. s2
local slen = string.len(s)

local startIndex = 1
local endIndex = 3
local sub1 = string.sub(s,startIndex,endIndex)
startIndex = 2
endIndex = -2
local sub2 = string.sub(s,startIndex,endIndex)

print(sub1)
print(sub2)



local str = "Hello Lua"
s1 = string.lower(str)
print(s1)
s2 = string.upper(str)
print(s2)
local s3 = string.rep(str, 3)	-- repeat
print(s3)
local s4 = string.reverse(str)
print(s4)

local beginI,endI = string.find(str,"Lua")
print(beginI,endI)

local s = string.format("%d, %i, %u",10,10,-10)
print(s)