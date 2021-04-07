t = {
    "I", "will", "do", "whatever", "it",
    "takes", "to", "serve", "my", "country",
    "even", "at", "the", "cost", "of", "my",
    "own", "life",
}
print(table.concat(t, " "))

t = {
    "will", "do",
}
table.insert(t, "whatever")
table.insert(t, 1, "I")
print(table.concat(t, " "))


t = {
    7, 2, 8
}
table.move(t, 1, #t, 2)
for i,v in ipairs(t) do
    print(i, v)
end


t = {
    7, 2, 8, 3
}
print(table.remove(t, 3))
print(table.remove(t))
print(table.remove(t))
print(table.remove(t))
print(table.remove(t))
