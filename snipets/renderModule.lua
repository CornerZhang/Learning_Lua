local render = {}
local moduleName = "render"
_G[moduleName] = render

function render:init()
	print("render module init")
end

function render:update()
	print("render module update")
end

function render:drawLine()
end

return render
