local str1 = string.pack(">b", -128)
local str2 = string.pack(">b", 127)

-- print(str1)
-- print(str2)

print(string.unpack(">b", str1)) --输出-128  2 ，这个2表示下一个字节的位置
print(string.unpack("<b", str2)) --输出127  2 ，这个2表示下一个字节的位置

-----------------------
local str1 = string.pack("B",0) --最小支持 0
local str2 = string.pack("B",255) --最大支持 255
--如果改为 pack("B",-1) 或者 pack("B",256)，就会出现下面的错误
--bad argument #2 to 'pack' (unsigned overflow)，意思是pack的第二个参数类型溢出了
print(string.unpack("B", str1)) --输出0  2 ，这个2表示下一个字节的位置
print(string.unpack("B", str2)) --输出255  2 ，这个2表示下一个字节的位置


---------------------------

local str1 = string.pack("H",0) --最小支持 0
local str2 = string.pack("H",65535) --最大支持 65535
--如果改为 pack("H",-1) 或者 pack("H",65536)，就会出现下面的错误
--bad argument #2 to 'pack' (unsigned overflow)，意思是pack的第二个参数类型溢出了
print(string.unpack("H", str1)) --输出0  3 ，这个3表示下一个short的位置，每个short占2字节
print(string.unpack("H", str2)) --输出65535  3 ，这个3表示下一个short的位置

------------------------
local str1 = string.pack("h",-32768) --最小支持 -32768
local str2 = string.pack("h",32767) --最大支持 32767
--如果改为 pack("H",-32769) 或者 pack("H",32768)，就会出现下面的错误
--bad argument #2 to 'pack' (integer overflow)，意思是pack的第二个参数溢出了
print(string.unpack("h", str1)) --输出-32768  3 ，这个3表示下一个short的位置，每个short占2字节
print(string.unpack("h", str2)) -- 32767  3 ，这个3表示下一个short的位置



----------------------------


-- I默认是占4字节，但是可以给I指定字节数，如 I2 就是占2字节,I3占3字节
local str1 = string.pack("I",0) --最小支持 0
local str2 = string.pack("I",4294967295) --最大支持 4294967295
--如果改为 pack("I",-1) 或者 pack("I",4294967296)，就会出现下面的错误
--bad argument #2 to 'pack' (unsigned overflow)，意思是pack的第二个参数类型溢出了
print(string.unpack("I", str1)) --输出0  5 ，这个5表示下一个字节的位置,I 默认占4字节
print(string.unpack("I", str2)) --输出4294967295  5 ，这个5表示下一个字节的位置

local str3 = string.pack("I2",0) --最小支持 0

-- local str3 = string.pack("I2",-199) --最小支持 0

local str4 = string.pack("I2",65535) --最大支持 4294967295

-- local str4 = string.pack("I2",65536) --最大支持 4294967295


print(string.unpack("I2", str3)) --输出0  3 ，这个3表示下一个字节的位置,I2 占2字节
print(string.unpack("I2", str4)) --输出4294967295  3 ，这个3表示下一个字节的位置

local str5 = string.pack("I3",0) --最小支持 0
local str6 = string.pack("I3",16777215) --最大支持 16777215
print(string.unpack("I3", str5)) --输出 0  4 ，这个4表示下一个字节的位置,I3 占3字节
print(string.unpack("I3", str6)) --输出 16777215  4 ，这个4表示下一个字节的位置


-----------------------------------


