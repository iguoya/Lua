print("Hello Lua")

local num = 100

print(num)

function sayHello(name)
  return  name
end


local words = sayHello("tiger")

print(words)

for i=1, 10 do
  print(i)
end

local date=os.date("%Y-%m-%d %H:%M:%S")
print(date)