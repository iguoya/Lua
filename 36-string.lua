s = "ABCDabcd1234"
print(string.byte(s))
print(string.byte(s, 1, -1))
print(s:byte())
print(s:byte(1, -1))

s2 = "tiger" --郭雅
print(string.byte(s2, 1, -1))

s3 = "郭雅"
print(string.byte(s3, 1, -1))


s4 = "郭"
print(string.byte(s4, 1, -1))


s5 = "雅"
print(string.byte(s5, 1, -1))


print(string.char(233,131,173,233,155,133))



function hello(i)
    print('喜欢郭雅'..i.."次")
end
gy_func = string.dump(hello)

print("序列化函数：gy_func")
-- print(s)

f = load(gy_func)
f(3)
f(5)
f(8)
f(100)

