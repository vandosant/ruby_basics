# Ask for user instruction
input = gets().chomp.to_str.downcase

if input == "sing" || input == "99"
  puts "99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, #{(99-1)} bottles of beer on the wall."
end

# Placeholder code for case when int is passed
#if input[0..3] == "sing"
#  puts "#{input[5..6]} bottles of beer on the wall, #{input[5..6]} bottles of beer.
#  Take one down and pass it around, #{(input[5..6].to_i-1)} bottles of beer on the wall."
#end