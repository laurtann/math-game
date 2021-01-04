=begin
#classes

player
 - lives

roumd
  - question
    - generate 2 random nums and add them
  - turn
    - bool?
  - begin and goodbye
    - if score for either player = 0, exit with msg

=end
class Player
  def initialize(score)
    @score = score
  end

  def set_score(new_score)
    @score= new_score
  end
end

class Game

  def initialize

  end

  def turn

  end

  def question

  end

  def print_score

  end

  def end

  end

end