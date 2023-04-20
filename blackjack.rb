def random_card
    cards = ["two", "three", "four", "five", "six", "seven",
             "eight", "nine", "ten",
             "jack", "queen", "king", "ace"]
  
    cards[rand(13)]
  end
  
  def move
    while true do
      puts "Choose your move: hit |||| stick "
      user_input = gets.chomp
      if user_input == "hit" || user_input == "stick"
        return user_input
      end    
    end
  end  
  
  def score(array)
    total = 0
    cards_array = {
      "two" => 2,
      "three" => 3,
      "four" => 4,
      "five" => 5,
      "six" => 6,
      "seven" => 7,
      "eight" => 8,
      "nine" => 9,
      "ten" => 10,
      "jack" => 10,
      "queen" => 10,
      "king" => 10,
      "ace" => 11
    }
    array.each do |hand_card|
      total += cards_array[hand_card]
    end
    total
  end    
  
  def run_game
    hand = []
    while move == "hit"
      hand.push(random_card)
      puts "Score so far: #{score(hand)}"
      if score(hand) > 21
        puts "You busted with: #{score(hand)}"
        break
      end
    end
    if score(hand) <= 21
      puts "You scored: #{score(hand)}"
    end
  end
  