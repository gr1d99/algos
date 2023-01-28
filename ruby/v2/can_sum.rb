# This is V2 of can sum implementation

module V2
  ##
  # Checks if a sum can generated using an array of numbers
  # multiple times.
  class CanSum
    class << self
      ##
      # #call(7, 1, 2, 3, 4, 5)
      #
      # Params::
      # +result+:: positive number
      # +nums+:: comma separated integers
      def call(result, *nums)
        base_cases_result = base_cases(result, nums)

        return base_cases_result unless base_cases_result.nil?

        can_sum = false

        nums.each do |num|
          can_sum = call(result - num, *nums)

          break if can_sum
        end

        can_sum
      end

      private

      def base_cases(result, nums)
        return false if (nums.empty? || result < 0)

        true if result === 0
      end
    end
  end
end
