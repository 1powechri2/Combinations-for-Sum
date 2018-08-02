class DiceRoll
  attr_reader :numb_of_dice,
              :numb_of_sides,
              :wanted_sum

  def initialize(numb_of_dice, numb_of_sides, wanted_sum)
    @numb_of_dice = numb_of_dice
    @numb_of_sides = numb_of_sides
    @wanted_sum = wanted_sum
  end

  def die
    (1..@numb_of_sides).to_a
  end

  def permutations
    die.repeated_permutation(@numb_of_dice).to_a
  end

end
