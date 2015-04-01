gem "minitest"
require "minitest/autorun"
require_relative "calculator"

#multiply
#divide

class CalculatorTest < Minitest::Test
  def test_it_starts_with_a_total_of_zero
    calc = Calculator.new
    assert_equal 0, calc.total
  end

  def test_adding_increases_the_calculators_total
    calc = Calculator.new
    assert_equal 15, calc.add(15)
    assert_equal 15, calc.total
  end

  def test_subtraction_decreases_the_total
    calc = Calculator.new
    assert_equal -6, calc.subtract(6)
    assert_equal -6, calc.total
  end

  def test_multiply_productizes_the_total
    calc = Calculator.new
    calc.add(2) #so we start with a non-zero total
    assert_equal 12, calc.multiply(6)
    assert_equal 12, calc.total
  end

  def test_clear_resets_the_total
    calc = Calculator.new
    calc.add(15)
    assert_equal 15, calc.total
    calc.clear
    assert_equal 0, calc.total
  end

  def test_multiple_operations_in_succession_work
    calc = Calculator.new
    calc.add(20)
    calc.multiply(6)
    assert_equal 120, calc.total
    calc.subtract(79)
    assert_equal 41, calc.total
  end
end