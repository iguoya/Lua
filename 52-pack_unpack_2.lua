--例子2

local str2 = '255'

--string.pack(),将常用字符根据给定的存储格式转换为ASCII码
local ascii_str2 = string.pack('<H', str2)
--H占2个字节 并且以小端存储，故存储的格式应该是下面的样子
-- (低位)00000000 (高位)00000001

--string.byte() 将一个ASCII字符还原回常用字符

byte1 = ascii_str2:byte(1)
--数据的低位，  输出 byte1 = 	0

byte2 = ascii_str2:byte(2)
--数据的高位 输出 byte2 = 	1

print('byte1 = ',byte1)
print('byte2 = ',byte2)

--所以，需要将 256 还原，只需要高位乘上 256 即可，即

local real_value2 = byte1 + byte2*256

print(real_value2)
--输出256


str2 = 1000
local ascii_str2 = string.pack('>H', str2)
print('使用unpack解码：',string.unpack('>H',ascii_str2))
--输出 使用unpack解码： 1000 3，后面的3是下一个字节的起始位