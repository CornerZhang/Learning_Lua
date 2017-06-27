local cp = require "complex"

local c1 = cp.new(4,3)
local c2 = cp.new(2,1)
local r = cp.add(c1, c2)
-- cp.inv(c2) -- private in module

print(r.r .. ", " .. r.i)