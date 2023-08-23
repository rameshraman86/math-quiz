# game
# questions = { question: '...', answer : '..' }
# players 
  # curr_question
  # current_player 
  # winner 
    # METHODS
      # add 2 players - create 2 player instances?
      # increase_player_score by 1
      # reduce_player_life by 1
  
class game
  
  questions = [
  {"question 1"=>"What does 5 plus 3 equal?", "answer"=>8},
  {"question 2"=>"What is the square root of 144?", "answer"=>12.0},
  {"question 3"=>"What is 9 multiplied by 7?", "answer"=>63},
  {"question 4"=>"What is the capital of France?", "answer"=>"Paris"},
  {"question 5"=>"How many planets are in our solar system?", "answer"=>8},
  {"question 6"=>"What is the largest mammal?", "answer"=>"Blue Whale"},
  {"question 7"=>"What is the chemical symbol for gold?", "answer"=>"Au"},
  {"question 8"=>"What is 15 divided by 3?", "answer"=>5},
  {"question 9"=>"What is the tallest mountain in the world?", "answer"=>"Mount Everest"},
  {"question 10"=>"What is the freezing point of water in Celsius?", "answer"=>0},
  {"question 11"=>"What is the national flower of Japan?", "answer"=>"Cherry Blossom"},
  {"question 12"=>"What is the largest ocean on Earth?", "answer"=>"Pacific Ocean"},
  {"question 13"=>"What is the boiling point of water in Fahrenheit?", "answer"=>212},
  {"question 14"=>"What is the chemical symbol for oxygen?", "answer"=>"O"},
  {"question 15"=>"What is the currency of Japan?", "answer"=>"Yen"},
  {"question 16"=>"What is the smallest prime number?", "answer"=>2},
  {"question 17"=>"What is the process of a liquid turning into a gas called?", "answer"=>"Evaporation"},
  {"question 18"=>"What is the largest land animal?", "answer"=>"African Elephant"},
  {"question 19"=>"What is the symbol for the element helium?", "answer"=>"He"},
  {"question 20"=>"What is the capital of Australia?", "answer"=>"Canberra"},
  {"question 21"=>"What is the smallest planet in our solar system?", "answer"=>"Mercury"},
  {"question 22"=>"What is the freezing point of water in Fahrenheit?", "answer"=>32},
  {"question 23"=>"What is the chemical symbol for carbon?", "answer"=>"C"},
  {"question 24"=>"What is the currency of India?", "answer"=>"Rupee"},
  {"question 25"=>"What is the square root of 25?", "answer"=>5},
  {"question 26"=>"What is 8 divided by 2?", "answer"=>4},
  {"question 27"=>"What is the chemical symbol for silver?", "answer"=>"Ag"},
  {"question 28"=>"What is the largest bird in the world?", "answer"=>"Ostrich"},
  {"question 29"=>"What is the process of a gas turning into a liquid called?", "answer"=>"Condensation"},
  {"question 30"=>"What is the currency of the United Kingdom?", "answer"=>"Pound Sterling"},
]

  attr_accessor :questions, :players, :curr_question, :current_player, :winner

  def initialize()
    @questions = questions
    @players = []
    @current_player = players[0]
    @curr_question = questions[0]
    @winner = nil
  end

  def add_players(player)
    @players.push(player)
  end

  def increase_player_score(player)
    player.score += 1
  end

  def reduce_player_life(player)
    player.life_remaining -= 1
  end

  def change_player
    if current_player == players[0]
      @current_player = players[1]
    else
      @current_player = players[0]
    end
  end

  
  

end



