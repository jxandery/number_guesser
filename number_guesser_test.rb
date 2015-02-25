gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './number_guesser'
require 'pry'

class NumberGuesserTest < Minitest::Test

  attr_reader :example

  def setup
    @example = NumberGuesser.new
  end

  def test_it_exists
    assert NumberGuesser
  end

  def test_it_generates_key
    assert_equal Fixnum, example.generate_key.class
  end

  def test_user_guess_is_a_fixnum
    assert_equal Fixnum, example.user_guess.class
  end

  def test_user_input_is_invalid_with_negative_nums
    assert_equal "Your guess is invalid. Please enter another guess.", example.valid_guess(-1)
  end

  def test_user_input_is_invalid_with_guess_greater_than_one_hundred
    assert_equal "Your guess is invalid. Please enter another guess.", example.valid_guess(112)
  end

  def test_if_guess_is_too_low_returns_proper_response
    example.generate_key
    example.user_guess
    assert_equal "Too low. Guess again!.", example.compare(guess)
  end


end

