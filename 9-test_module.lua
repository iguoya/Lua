-- test_module2.lua 文件
-- module 模块为上文提到到 module.lua
-- 别名变量 m
local m = require("8-module")
 
print(m.constant)
m.func1()
m.func3()