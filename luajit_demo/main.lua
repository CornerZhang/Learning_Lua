print "Main module"

local module1 = require "modules.module1"
local module2 = require "modules.module2"

print("Module says:", module1.name)
print("Module says:", module2.name)