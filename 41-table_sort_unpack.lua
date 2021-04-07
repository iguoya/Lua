t = {
    7, 4, 3, 1, 3, 9, 3, 6
}
table.sort(t)
print(table.concat(t, ", "))
table.sort(t, function(a, b)
    return a > b
end)
print(table.concat(t, ", "))
-- 以下为不严谨的排序函数，在当前示例中将会抛出错误
-- 但是它在很多情况下都会正常运行，注意避免写出这样的排序函数
-- table.sort(t, function(a, b)
--     return a >= b
-- end)
-- print(table.concat(t, ", "))


t = {
    27,63,15,28,13,40,14,1,31,2,38,65,20,12,23,28,39,26
}

table.sort(t, function(a, b)
    return (a%10) > (b%10)
end)
print(table.concat(t, "<->"))


t = {
    99, 42, 31, 15, 38, 19, 23, 26
}
-- print(type(table.unpack(t))..":"..table.unpack(t))
print(table.unpack(t))
print(type(table.unpack(t))..":"..table.unpack(t))
print(table.unpack(t))
print(type(table.unpack(t))..":"..table.unpack(t))
print(table.unpack(t))
print(type(table.unpack(t))..":"..table.unpack(t))
print(table.unpack(t))
print(type(table.unpack(t))..":"..table.unpack(t))
print(table.unpack(t))
print(type(table.unpack(t))..":"..table.unpack(t))
print(table.unpack(t))
-- print(table.unpack(t, 3, 7))