require './lib/dice_roll'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class DiceRollTest < Minitest::Test

  def test_it_has_attributes
    roll = DiceRoll.new(2, 4, 3)

    assert_equal 2, roll.numb_of_dice
    assert_equal 4, roll.numb_of_sides
    assert_equal 3, roll.wanted_sum
  end

  def test_die
    roll = DiceRoll.new(2, 4, 3)

    assert_equal [1, 2, 3, 4], roll.die
  end

  def test_permutations
    roll = DiceRoll.new(2, 4, 3)

    expected = [[1,1], [1,2], [1,3], [1,4],
                [2,1], [2,2], [2,3], [2,4],
                [3,1], [3,2], [3,3], [3,4],
                [4,1], [4,2], [4,3], [4,4]]

    actual   = roll.permutations

    assert_equal expected, actual
  end

  def test_sum_permutations
    roll = DiceRoll.new(2, 4, 3)

    expected = {[1,1] => 2, [1,2] => 3, [1,3] => 4, [1,4] => 4,
                [2,1] => 3, [2,2] => 4, [2,3] => 5, [2,4] => 6,
                [3,1] => 4, [3,2] => 5, [3,3] => 6, [3,4] => 7,
                [4,1] => 5, [4,2] => 6, [4,3] => 7, [4,4] => 8}

    actual   = roll.sum_permutations

    assert_equal expected, actual
  end
end
