class CanSum
  class << self
    def call(result, *nums)
      base_cases_result = base_cases(result, nums)

      return base_cases_result unless base_cases_result.nil?

      current_index = 0
      next_index = current_index + 1
      last_index = nums.size - 1
      can_sum = false

      while next_index <= last_index
        i = nums[current_index]
        j = nums[next_index]

        can_sum = sum(i, j) == result

        break if can_sum

        next_index += 1

        if next_index > last_index
          current_index += 1
          next_index = current_index + 1
        end
      end

      can_sum
    end

    private

    def base_cases(result, nums)
      return true if nums.include? result

      return true if nums.size == 1 && nums.first == result

      false if nums.empty?
    end

    def sum(i, j)
      i + j
    end
  end
end
