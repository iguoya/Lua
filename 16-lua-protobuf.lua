-- 引入pb库
local pb = require "pb"
-- load pb文件
--assert(pb.loadfile "common.pb" )
-- lua table data
local data = {
    aaa = 123456,
    bbb = "bbbbb"
}
-- 把一个lua table数据encode成二进制文件
local bytes = assert(pb.encode("dd01.account", data))
print(pb.tohex(bytes))
-- 把一个二进制文件decode为lua table
local data2 = assert(pb.decode("dd01.account", bytes))
print(cjson_encode(data2))