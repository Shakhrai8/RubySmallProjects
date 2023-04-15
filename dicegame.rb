player_1_score = 0
player_2_score = 0

def throw_dices
  return rand(1..12), rand(1..12)
end

while true do
  player_1, player_2 = throw_dices 
  puts "Player 1: #{player_1} |||| Player 2: #{player_2}" 
  puts "----------------------------------------------"
  player_1_score += 1 if player_1 > player_2
  player_2_score += 1 if player_2 > player_1
  break if player_1_score == 2 || player_2_score == 2
end

if player_1_score > player_2_score
  puts "Player 1 won"
else
  puts "Player 2 won"
end    