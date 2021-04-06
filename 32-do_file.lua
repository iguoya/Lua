local h = dofile("test.lua")
print(h)

print("中国")
 
tiger_table = {
    "num",
    "weight"
}

local mt = getmetatable(tiger_table) -- 获得字符串的元表

print(mt)
-- print(mt.__index)

-- .sub("XXTouch", 3, 5)

for i,v in ipairs({5, 7, 8}) do
    print(i, v)
end


f = loadfile("test.lua")
print('Hello')
print(f())