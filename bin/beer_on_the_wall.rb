# Ask for user instruction
input = gets().chomp


if (1..99).cover?(input.to_i)
  input = input.to_i
  input.times do
  puts "#{input} bottles of beer on the wall, #{input} bottles of beer.
Take one down and pass it around, #{(input.pred)} bottles of beer on the wall."
  input -= 1
  end
end