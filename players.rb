# player
  # in order to be initiatlized, they will need
    # player number = 1 or 2
    # life_remaining
    # score
  # public methods - getter and setter for score and life remaining

class Players
  attr_accessor :life_remaining, :score

  def initialize(life_remaining, score)
    @life_remaining = life_remaining
    @score = score
  end

end