class Die
  # The number of dots on a die are called "pips"
  attr_reader :pips

  def initialize(pips=6)
    @pips = pips
  end

  def roll
    rand(pips) + 1
  end
end
