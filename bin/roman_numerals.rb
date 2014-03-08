# Roman numeral converter

# Get user input
puts "Type an integer:"
x = gets().to_i

# Convert integer to roman numeral
if x >= 5
  roman = "V"
  x -= 5
  if x >= 1
    x.times do roman += "I" end
  end
  puts roman
end