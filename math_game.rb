class Math_game
  
  def initialize(number_of_players)
    @players = number_of_players
    puts "Math_game created #{@players} players"
  end


  def start
    turn_handler = Turn.new(@players)
    player_one   = Player.new("Player 1")
    player_two   = Player.new("Player 2")
    question_set = Question.new() 

    while question_set.num != 0 do
      question_set.ask
      question_set.check ? feed_ego_of(turn_handler.other) : take_life(turn_handler.get)
      puts "P1: #{player_one.lives}/3 vs P2: #{player_two.lives}/3"
      turn_handler.next

      if player_one.lives == 0 
        winner(2)
      end

      if player_two.lives == 0 
        winner(1)
      end
    end
  end


  def take_life
    if player_number == 1
      puts "Player 1: Seriously? No!"
      player_one.loose_life;
    end

    if player_number == 2
      puts "Player 2: Seriously? No!"
      player_two.loose_life;
    end
  end


  def feed_ego_of player_number
    if player_number == 1 
      puts "Player 1: YES! You are correct."
    end

    if player_number == 2 
      puts "Player 2: YES! You are correct."
    end
  end


  def winner player_number
    puts player_number == 1 ? 
    "Player 1 wins with a score of #{player_one.lives}/3" : "Player 2 wins with a score of #{player_two.lives}/3"
  end
end