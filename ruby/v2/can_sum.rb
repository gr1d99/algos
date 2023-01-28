# frozen_string_literal: true

# This is V2 of can sum implementation

module V2
  ##
  # Checks if a sum can generated using an array of numbers
  # multiple times.
  class CanSum
    class << self
      ##
      # eg: <code>V2::CanSum#call(7, 1, 2, 3, 4, 5)</code>
      #
      # +Params+:
      # +result+:: positive number
      # +nums+:: comma separated integers
      # +memo+:: optional, used internally
      def call(result, *nums, memo: {})
        return memo[result] if memo.key? result

        memo[result] = false

        base_cases_result = base_cases(result, nums)

        unless base_cases_result.nil?
          memo[result] = base_cases_result
          return base_cases_result
        end

        _run(result, nums, memo)

        memo[result]
      end

      private

      def _run(result, nums, memo)
        nums.each do |num|
          new_result = result - num
          if call(new_result, *nums, memo: memo)
            memo[result] = true
            break
          end
        end
      end

      def base_cases(result, nums)
        return false if nums.empty? || result.negative?

        true if result.zero?
      end
    end
  end
end

V2::CanSum.call(7, 1, 2, memo: {})
