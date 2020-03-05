require './player'
require './game'
require './questions'

# @question = Question.new
# player1 = Player.new
# player2 = Player.new
Game.new.play


# Take input from a user
#i need to evaluate if that user is right
# if that answer is right, remove one live from the current user

# How do I keep track of a current user?
# When my game starts current user needs to be player one

# After a question is asked we need it to switch to player 2

# player_input = gets.chomp.to_i

# def testing(player_input)
#   if @current_player
#     if player_input == @question.answer
#       puts 'Yes! You are correct'
#     end
#     if player_input != @question.answer
#       lose_life()
#       puts 'Seriously? No you bastard!!'
#     end
#   end
# end

# testing(player_input)


