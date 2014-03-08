# Roman numeral converter

# Get user input
puts "Type an integer:"
x = gets().to_i
roman = ""
place = 0
# Convert integer to roman numeral
if x / 100 >= 1
  (x/100).times do
    roman += "C"
    place += 1
    x -= 100
  end
end
if x / 50 >= 1
  (x/50).times do
    roman += "L"
    place += 1
    x -= 50
  end
end
if x / 10 > 1
  (x/10).times do
    roman += "X"
    place += 1
    x -= 10
  end
end
if x > 8
  roman += "X"
  x -= 10
end
if x > 4
  roman += "V"
  x -= 5
end
if x >= 1
  x.times do roman += "I" end
end
if x < 0
  x.abs.times do roman.insert(place, "I") end
end
puts roman
