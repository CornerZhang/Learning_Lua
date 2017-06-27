for envArg, v in pairs(_G) do
	print(envArg .. " type: " .. type(v))
end

a = 10

print(_G.a)