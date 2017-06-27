function createCountdownTimer(second)
	local ms = second * 1000		-- ms为countdown的Upvalue
	local function countDown()
		ms = ms - 1
		return ms
	end
	
	return countDown
end

local timer1 = createCountdownTimer(1)

for i=1, 3 do
	print( timer1() )
end