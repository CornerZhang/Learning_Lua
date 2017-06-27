
-- package.loaded["renderModule"] = nil   -- error
renderSystem = require "renderModule"

render = { x=480, y=320 }

function render:init(x, y)
	render.x = x
	render.y = y
	print("init")
	
	return true
end


function render:update()
	print("update")
end

local r = render.init()
print(r)


renderSystem.init()
renderSystem.update()
