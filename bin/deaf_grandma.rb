puts "Say hi to grandma:"
x = gets()

puts "HUH?! SPEAK UP SONNY!" if x != x.upcase

puts "NO, NOT SINCE #{rand(1930..1950)}!" if x == x.upcase