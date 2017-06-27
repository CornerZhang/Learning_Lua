function create(name, id)
	local obj = {name = name, id = id}
	
	function obj:SetName(name)
		self.name = name
	end
	
	function obj:GetName()
		return self.name
	end
	
	function obj:SetId(id)
		self.id = id
	end
	
	function obj:GetId()
		return self.id
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





local Student = {id=100, name="Tony"}
function Student:create(obj)
	obj = obj or {}
	setmetatable(obj, self)
	self.__index = self
	return obj
end

function Student:toString()
	local s = "name:"..self.name .. " id:" .. self.id
	return s
end
print(Student:toString())

student1 = Student:create({id=200,name="Tom"})
print(student1:toString())