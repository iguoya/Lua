local t = {
    a = 1,
    b = 2,
    c = 3,
}
local k, v = nil, nil
for k, v in next, t, k do
    print(k, v)
end


t = {
    age = 33,
    weight = 60.2,
    name = "tiger",
}
for k, v in pairs(t) do
    print(k, v)
end
print(getmetatable(t))

