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

  def permutations(combinations)
    combinations.repeated_permutation(@numb_of_dice).to_a
  end

  def sum_permutations(all_combinations)
    all_combinations.inject({}) do |collector, array|
      collector[array] = array.sum
      collector
    end
  end

  def desired_sums(combo_sum_pairs)
    combo_sum_pairs.map do |combo, sum|
      if @wanted_sum == sum
        combo
      end
    end.compact
  end

  def answers
    die
    combos = permutations(die)
    roll_sum_pairs = sum_permutations(combos)
    if desired_sums(roll_sum_pairs).empty?
      puts 'There are no combinations for this sum'
      desired_sums(roll_sum_pairs)
    else
      desired_sums(roll_sum_pairs)
    end
  end
end
