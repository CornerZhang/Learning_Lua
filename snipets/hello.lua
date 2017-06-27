require "hello2"

function foo(a,b,c,...)
  local sum = a+b
  return sum, c 	-- 可以返回多个值
end

r1, r2 = foo(1,"123","hello")
print(r1,r2)

v1, v2 = 4, 6;

callForMe("dadf");

print(myadd(1,3));
print(package.path);

print(_VERSION)
print(math.pi)

local twoFace4 = math.pow(2,4)
print(twoFace4)

local a = {};
function doSomething()
	print("do ...")
end

local	caller="sell"
a[caller] = doSomething
a[caller]()
