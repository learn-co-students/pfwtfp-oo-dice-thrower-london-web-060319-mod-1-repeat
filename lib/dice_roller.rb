class DiceRoller
  attr_reader :dice, :dice_count

  def initialize(dice_count=1, pip_count=6)
    @dice_count = dice_count
    @pip_count = pip_count

    @dice = Array.new(@dice_count) {Die.new(@pip_count)}
  end

  def generate_set
    @dice.map {|d| d.roll}
  end

end
