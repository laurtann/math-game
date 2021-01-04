class Player
  def initialize(score, turn)
    @score = score
    @turn = turn
  end

  def score
    @score
  end

  def set_score(new_score)
    @score= new_score
  end

  def turn
    @turn
  end

  def set_turn
    @turn = !@turn
  end
end