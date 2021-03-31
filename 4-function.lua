function factorial1(n)
    if n == 0 then
        return 1
    else
        return n * factorial1(n - 1)
    end
end
print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))

-- function_test2.lua 脚本文件
function testFun(tab,fun)
    for k ,v in pairs(tab) do
            print(fun(k,v));
    end
end


tab={china="panda",tiger="guoya"};
testFun(tab,
function(key,val)--匿名函数
    return key..":="..val;
end
);

--[[ 函数返回两个值的最大值 --]]
function max(num1, num2)

    if (num1 > num2) then
       result = num1;
    else
       result = num2;
    end
 
    return result;
 end
 -- 调用函数
 print("两值比较最大值为 ",max(10,4))
 print("两值比较最大值为 ",max(5,6))


 myprint = function(param)
    print("这是打印函数 -   ##",param,"##")
 end
 
 function add(num1,num2,functionPrint)
    result = num1 + num2
    -- 调用传递的函数参数
    functionPrint(result)
 end
 myprint(10)
 -- myprint 函数作为参数传递
 add(2,5,myprint)


 s, e = string.find("www.runoob.com", "runoob") 
 print(s, e)


 s, e = string.find("snow tiger", "snow") 
 print(s, e)


 function maximum (a)
    local mi = 1             -- 最大值索引
    local m = a[mi]          -- 最大值
    for i,val in ipairs(a) do
       if val > m then
           mi = i
           m = val
       end
    end
    return m, mi
end

print(maximum({8,10,23,12,5}))


function average(...)
    result = 0
    local arg={...}
    for i,v in ipairs(arg) do
       result = result + v
    end
    print("总共传入 " .. select("#",...) .. " 个数")
    return result/select("#",...)
 end
 
 print("平均值为",average(10,5,3,4,5,6))


function add(...)  
local s = 0  
    for i, v in ipairs{...} do   --> {...} 表示一个由所有变长参数构成的数组  
    s = s + v  
    end  
    return s  
end  
print(add(3,4,5,6,7))  --->25