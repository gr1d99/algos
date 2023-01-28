require 'minitest/autorun'
require_relative '../helper'
require_relative '../../v2/can_sum'

module V2
  class CanSumTest < Minitest::Test
    def test_7_5347
      assert CanSum.call 7, 5, 3, 4, 7
    end

    def test_7_empty_array
      refute CanSum.call 7
    end

    def test_7_7_only_array
      assert CanSum.call 7, 7
    end

    def test_7_contain_7_in_array
      assert CanSum.call 7, 1, 7
    end

    def test_7_23
      assert CanSum.call 7, 2, 3
    end
  end
end