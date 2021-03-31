result = {}

result.words = "Hello"

result.num = 88

result["name"] = "tiger"


print(result.words)

print(result.num)

print(result.name)


for key, value in pairs(result) do
  print(key, value)
end


arr = {123, "hello",  55.88}

for key, value in pairs(arr) do
  print(key, value)
end



-- 创建一个空的 table
local tbl1 = {}
 
-- table_test.lua 脚本文件
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end


-- 直接初始表
local tbl2 = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl2) do
  print("Key", key)
  -- print(val)
end



for key, value in pairs(tbl2) do
  print(value)
end


array = {"Lua", "Tutorial"}

for i= 0, 2 do
   print(array[i])
end