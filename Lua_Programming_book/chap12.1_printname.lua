local authers = {}
function Entry(b)
	if b.author then
		authers[b.author] = true
	end
	
end

dofile("data")
for name in pairs(authers) do
	print(name)
end
