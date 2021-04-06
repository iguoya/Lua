local f = assert(io.open("test.txt", "r"))

-- fio.read(...)
-- sys.toast(f:read("*a"))
-- io.read(...);
-- file:read(...)
print(f:read())
print("abcddd")
f:close()



f = load("print('XXTouch')")
print('Hello')
f()



function has_a_err(arg1, arg2)
    print(arg1)
    arg1 = nil + arg1
    print(arg2)
end
print(pcall(has_a_err, "XXT", "Terrible"))



mt = {
    __eq = function(self, v)
        return true
    end
}
t1 = {}
t2 = {}
setmetatable(t1, mt)
setmetatable(t2, mt)
print(t1==t2)
print(rawequal(t1, t2))



function var_args(...)
    print("有 "..select("#", ...).." 个参数")
    print(select(1, ...))
end
var_args("XXTouch", 1, 2, 3, 4)
var_args(1, "XXTouch", 2, 3)

