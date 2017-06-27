require "math"
require "os"

local sin, asin = math.sin, math.asin
local deg, rad = math.deg, math.rad

local s = sin(0.5)

print(s)

math.randomseed(os.time())
print(math.random())