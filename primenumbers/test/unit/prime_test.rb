require 'minitest/unit'
require 'minitest/autorun'
require '../../app/models/checkprime'

class PrimeTest < MiniTest::Unit::TestCase
  def test_check_prime_returns_a_valid_response_for_not_prime
    result = Checkprime.new(10).checkprime
    assert_equal("Not Prime", result, "10 is not prime")
  end

  def test_check_prime_returns_a_valid_response_for_prime
    result = Checkprime.new(7).checkprime
    assert_equal("Prime!!", result, "7 is prime")
  end
end
