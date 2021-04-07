s = "XXTouch."
print(string.find(s, "Tou"))
print(string.find(s, "."))
print(string.find(s, ".", 1, true))
print(string.find(s, "%."))

s2 = "我爱郭雅"
print(string.find(s2, "雅"))

-- print(string.find(s2, "爱%."))
print(string.find(s2, "爱."))
print(string.find(s2, "爱.*"))


print(string.format("%d + %d = %d", 100, 200, 100+200))
print(string.format("%f * %f = %f", 100, 200, 100*200))
print(string.format("%x + %x = %x", 100, 200, 100+200))

print(string.format("%s > 爱 < %s", "雪虎", "郭雅"))


s = "hello world from Lua"
for w in string.gmatch(s, "%a+") do
  print(w)
end

t = {}
s = "from=world, to=Lua"
for k, v in string.gmatch(s, "(%w+)=(%w+)") do
  t[k] = v
end


local it = string.gmatch("k=XXTouch,v=Awesome#k=Soze,v=a Goodman#", "k=(.-),v=(.-)#")
while (true) do
    local k, v = it()
    if (k) then
        print(k, v)
    else
        break
    end
end


x = string.gsub("hello world", "(%w+)", "%1 %1")
print(x)
--> x="hello hello world world"
x = string.gsub("hello world", "%w+", "%0 %0", 1)
print(x)
--> x="hello hello world"
x = string.gsub("hello world from Lua", "(%w+)%s*(%w+)", "%2 %1")
print(x)
--> x="world hello Lua from"
x = string.gsub("home = $HOME, user = $USER", "%$(%w+)", os.getenv)
print(x)
--> x="home = /home/roberto, user = roberto"
x = string.gsub("4+5 = $return 4+5$", "%$(.-)%$", function (s)
      return load(s)()
    end)
print(x)
--> x="4+5 = 9"
local t = {name="lua", version="5.3"}
x = string.gsub("$name-$version.tar.gz", "%$(%w+)", t)
print(x)
--> x="lua-5.3.tar.gz"

s5 = "我爱郭雅"
-- l = string.len(s2)
print(string.len(s5))


s6 = "Tiger can use  Python Lua SQL PHP"
print(string.lower(s6))
print(string.upper(s6))

print(string.match(s5, "雅"))
print(string.match(s5, "珊"))
-- print(string.match("XXT0uch", "%d"))