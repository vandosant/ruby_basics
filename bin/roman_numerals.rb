# Roman numeral converter

# Get user input
puts "Type an integer:"
x = gets().to_i

# Convert integer to roman numeral
if x > 8
  roman = "X"
  x -= 10
end
if x > 4
  roman = "V"
  x -= 5
end
if x >= 1
  x.times do roman += "I" end
end
if x < 0
  x.abs.times do roman.insert(0, "I") end
end
puts roman
