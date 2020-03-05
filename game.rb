require './player'
require './questions'

class Game

  def play
    create_players
    start
    game_end
  end

  def create_players
    @player1 = Player.new
    @player2 = Player.new
  end

  def start
    @current_player = @player1
    until game_over?
      
      if (new_question)
        puts "YES! You are correct"
        @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
      else
        puts "Seriously? No!"
        @current_player.lose_life
      end
      show_lives
      puts "----- NEW TURN -----"
    end
  end

  def new_question
    question = Question.new
    @current_player == @player1 ? playerNum = "Player 1" : playerNum = "Player 2"
    puts "#{playerNum}: What does #{question} equal?"
    answer = gets.chomp.to_i
    question.correct?(answer)
  end

  def game_over?
    [@player1, @player2].any? { |player| player.lives <= 0 }
  end

  def show_lives
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def game_end
    if @player1.lives > 0
      winner = @player1
    else
      winner = @player2
    end
    winner == @player1 ? playerNum = "Player 1" : playerNum = "Player 2"
    puts "#{playerNum} wins with a score of #{winner.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good Bye!"
  end

end