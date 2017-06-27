function rectArea(w,h)
	local area = w*h
	return area
end
local str = string.format("area of rect %f",rectArea(32,64))
print(str)

local b = true
print(b)
b = 10
print(b)
b = {34,45}
print(b)

print(area)

function calcRect(w, h)
	local area = w * h
	local perimeter = (w+h)*2
	return area, perimeter
end

local a,p = calcRect(10,15)
print("result of calaRect:" .. a .. ", square perimeter:" .. p)

function triArea(b, height)
	local area = 0.5*b*height
	return area
end


function getArea(type)
	local returnFunction
	
	if type=="rect" then
		returnFunction = rectArea
	else
		returnFunction = triArea
	end
	
	return returnFunction
end

local areaFunction = getArea("tri")
print("area of tri:" .. areaFunction(10,15))
local areaFunction = getArea("rect")
print("area of rect:" .. areaFunction(10,15))

function getAreaAnomynous(type)
	local returnFunction
	
	if type=="rect" then
		returnFunction = function(w,h)		-- anomynous function
			local area = w*h
			return area
		end
	else
		returnFunction = function(b,h)		-- anomynous function
			local area = 0.5*b*h
			return area
		end
	end
	
	return returnFunction
end

local areaFunction = getAreaAnomynous("tri")
print("area of tri:" .. areaFunction(10,15))
local areaFunction = getAreaAnomynous("rect")
print("area of rect:" .. areaFunction(10,15))
