puts"-------------------------------------------"
puts "Please choose the path from the following:"
puts "Left |||| Forward |||| Right"
puts "-------------------------------------------"
user = gets.chomp.downcase
if user == "left" 
  puts"-------------------------------------------"
  puts "Oh no! There is a werewolf, you died."
  puts"-------------------------------------------"
end
if user == "right" 
  puts"-------------------------------------------"
  puts "Oh no! There is a goblin, you died."
  puts"-------------------------------------------"
end
if user == "forward"
  puts "You proceed..."
  puts"-------------------------------------------"
  puts "Please choose the path from the following:"
  puts "Left |||| Forward |||| Right"
  puts "-------------------------------------------"
  user = gets.chomp.downcase
  if user == "forward"
    puts"-------------------------------------------"
    puts "You won!"
    puts"-------------------------------------------"
  end
  if user == "left" 
    puts"-------------------------------------------"
    puts "Oh no! There is a werewolf, you died."
    puts"-------------------------------------------"
  end
  if user == "right" 
    puts"-------------------------------------------"
    puts "Oh no! There is a goblin, you died."
    puts"-------------------------------------------"
  end
end