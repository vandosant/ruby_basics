# Roman numeral converter

# Get user input
puts "Type an integer:"
x = gets().to_i
roman = ""
place = 0
# Convert integer to roman numeral
if x / 900 >= 1
  (x/900).times do
    roman += "M"
    place += 1
    x -= 1000
  end
end
puts x
if x / 400 >= 1
  (x/400).times do
    roman += "D"
    place += 1
    if x >= 400 && x < 500
      roman.insert(place-1, "C")
      place += 1
      x += 100
    end
    x -= 500
  end
end
puts x
if x / 90 >= 1
  (x/90).times do
    roman += "C"
    place += 1
    x -= 100
  end
end
if x / 40 >= 1
  (x/40).times do
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
if x <= 100
  (x.abs / 100).times do
    roman.insert(place-1, "C")
    x += 100
  end
end
if x < 40
  (x.abs / 40).times do
    roman.insert(place-1, "L")
    x += 40
  end
end
if x < 10
  (x.abs / 10).times do
    roman.insert(place-1, "X")
    x += 10
  end
end
if x < 4
  (x.abs / 4).times do
    roman.insert(place, "V")
    x += 5
  end
end
if x < 0
  x.abs.times do roman.insert(place, "I") end
end
puts roman
