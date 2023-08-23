# player
  # in order to be initiatlized, they will need
    # player number = 1 or 2
    # life_remaining
    # score
  # public methods - getter and setter for score and life remaining
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
  
require_relative './players'
require_relative './game'

player1 = Players.new(3, 0)
player2 = Players.new(3, 0)

game = Game.new()
game.add_players(player1)
game.add_players(player2)

while game.winner == nil
  puts "----- NEW TURN -----"
  puts "Player #{game.current_player.player_number}: #{game.curr_question[:question]}"
  answer = gets.chomp.to_i
  if answer == game.curr_question[:answer]
    puts "YES! You are correct."
    game.increase_player_score(game.current_player)
  else
    puts "Seriously? No!"
    game.reduce_player_life(game.current_player)
  end
  game.change_player
  game.change_question
  game.check_winner
  puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
end


