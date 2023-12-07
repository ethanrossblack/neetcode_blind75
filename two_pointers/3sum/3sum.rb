def three_sum(nums)
  triplets = []
  nums = nums.sort
  puts "#{nums}"

  nums.each_with_index do |num, i|
    if i > 0 && num == nums[i - 1]
      next
    end

    left, right = i + 1, nums.size - 1

    while left < right do
      three_sum = num + nums[left] + nums[right]

      if three_sum > 0
        right -= 1
      elsif three_sum < 0
        left += 1
      else
        triplets << [num, nums[left], nums[right]]
        left += 1

        while nums[left] == nums[left - 1] && left < right
          left += 1
        end
      end
    end
  end

  triplets
end