# Ask for user instruction
puts "How many verses?:"
input = gets().chomp


if (0..99).cover?(input.to_i)
  input = input.to_i
  while input > 2
    puts "#{input} bottles of beer on the wall, #{input} bottles of beer.
Take one down and pass it around, #{(input.pred)} bottles of beer on the wall."
    input -= 1
  end

  if input == 2
    puts "#{input} bottles of beer on the wall, #{input} bottles of beer.
Take one down and pass it around, #{(input.pred)} bottle of beer on the wall."
    input -= 1
  end

  if input == 1
    puts "#{input} bottle of beer on the wall, #{input} bottle of beer.
Take one down and pass it around, no bottles of beer on the wall."
    input -= 1
  end

  if input == 0
    puts "No bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end