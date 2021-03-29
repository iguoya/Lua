result = {}

result.words = "Hello"

result.num = 88

result["name"] = "tiger"


print(result.words)

print(result.num)

print(result.name)


for key, value in pairs(result) do
  print(key, value)
end


arr = {123, "hello",  55.88}

for key, value in pairs(arr) do
  print(key, value)
end
