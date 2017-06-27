local function create(name, id)
	local data = {name = name, id = id}
	local obj = {}
	
	function obj:SetName(name)
		data.name = name
	end
	
	function obj:GetName()
		return data.name
	end
	
	function obj:SetId(id)
		data.id = id
	end
	
	function obj:GetId()
		return data.id
	end
	
	return obj
end

local myCreate = create("sam",001)

for k, v in pairs(myCreate) do
	print(k,"=>",v)
end

print("myCreate's name:", myCreate:GetName(), "myCreate's id:", myCreate:GetId())

myCreate:SetId(100)
myCreate:SetName("hello kity")

print("myCreate's name:",myCreate:GetName(), "myCreate's id:", myCreate:GetId())
