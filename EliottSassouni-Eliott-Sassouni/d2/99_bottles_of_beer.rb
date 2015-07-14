bottle_count = 100

99.times do 
bottle_count -= 1
lyrics = "#{bottle_count} bottles of beer on the wall, #{bottle_count} bottles of beer! Take one down, pass it around, #{bottle_count.to_i - 1} bottles of beer on the wall! "

puts lyrics

end