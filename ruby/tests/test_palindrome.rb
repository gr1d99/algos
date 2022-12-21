require 'minitest/autorun'
require_relative './helper'
require_relative '../palindrome'

class PalindromeTest < Minitest::Test
  def setup
    @palindrome = Palindrome.new
  end

  def test_121
    assert @palindrome.is_palindrome 121
  end

  def test_neg_121
    refute @palindrome.is_palindrome -121
  end

  def test_10
    refute @palindrome.is_palindrome 10
  end
end
