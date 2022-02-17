while true do
  line = io.read()
  
  words = { str={}, num={} }
  while string.len(line) ~= 0 do
    i = string.find(line, " ")

    if i == nil then
      word = line
      line = ""
    else
      word = string.sub(line, 0, i - 1)
      line = string.sub(line, i - string.len(line))
    end

    if string.find(word, "%d+") ~= nil then
      table = words["num"]
    else
      table = words["str"]
    end

    table[#table + 1] = word
  end

  for key, value in pairs(words) do
    io.write(key, ": ")
    for i = 1, #value do
      if i ~= 1 then
        io.write(", ")
      end
      io.write(value[i])
    end
    print()
  end
end
