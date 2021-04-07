-- c 表示一个字节
local str1 = string.pack("c1",'a') --表示最大支持1个字节的字符
print('#str1',#str1) --输出 #str1	1
print('#str1',string.unpack("c1", str1)) --输出 #str2	5
-- local str1 = string.pack("c1",'aa') --表示最大支持1个字节的字符
--如果改为 pack("c1",'aa') ,就会出现如下的错误
--bad argument #2 to 'pack' (string longer than given size)
local str2 = string.pack("c5",1) --表示最大支持5个字节的字符
local str2 = string.pack("c5","abcde") --表示最大支持5个字节的字符
print('#str2',string.unpack("c5", str2)) --输出 #str2	5
print(string.unpack("c1", str1)) --输出a  2 ，这个2表示下一个字节的位置,c1 占1字节
print(string.unpack("c5", str2)) --输出1  6 ，这个6表示下一个字节的位置,c5 占5字节


----------------------------------------



-- s,可指定头部占用字节数，默认占8字节
local temp1 = string.pack("s","abcdefghigklmn")
print(string.unpack('s', temp1))
--输出 a    10,这个10表示下一个字符的位置


-- s,可指定头部占用字节数，默认占8字节
local temp1 = string.pack("s","abcdefg")
print(string.unpack('s', temp1))
--输出 a    10,这个10表示下一个字符的位置



local temp2 = string.pack("s",'abc')
print(string.unpack('s', temp2))
--输出 abc	12,这个12表示下一个字符的位置

local temp3 = string.pack("ss",'abc','efg')
print(string.unpack('s', temp3, 12))
--输出 efg	23,这个23表示下一个字符的位置

-- s 默认头部占8字节，s1表示头部占1字节、s2表示头部占2字节

local temp4 = string.pack("s2", "abcdefghij")
print(string.unpack('s2', temp4))
--输出 abc    6,这个6表示下一个字符的位置

local temp5 = string.pack("s2s2",'abc','efg')
print(string.unpack('s2', temp5, 6))
--输出 efg	11,这个11表示下一个字符的位置
