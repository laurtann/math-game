require './player'

$p1 = Player.new(3, true)
$p2 = Player.new(3, false)

class Game

  def initialize

  end

  def question

    $p1.turn ? player = "Player 1" : player = "Player 2"

    first_num = rand(1..20)
    second_num = rand(1..20)
    @answer = first_num + second_num

    puts "#{ player }: What does #{ first_num } + #{ second_num } equal?"

    make_guess
  end

  def make_guess

    $p1.turn ? player = $p2 : player = $p1

    guess = gets.chomp

    if guess.to_i == @answer
      puts "Nice one!"
      print_score
    else
      puts "Wrong-o!"
      player.set_score(player.score - 1)
      print_score
    end

    $p1.set_turn
    $p2.set_turn

    $p1.score != 0 && $p2.score != 0 ? question : end_game
  end

  def print_score
    puts "P1: #{ $p1.score }/3 vs P2: #{ $p2.score }/3"
  end

  def end_game
    if $p1.score != 0
      player = "Player 1"
      p = $p1
    else
      player = "Player 2"
      p = $p2
    end

    puts "#{ player } wins with a score of #{ p.score }/3"
  end

end

game = Game.new
game.question
