def rob(nums)
  return nums[0] if nums.length == 1
  dp1 = Array.new(nums.size + 1, 0)
  dp2 = Array.new(nums.size + 1, 0)
  dp1[1] = nums[0] if nums.any?
  dp2[1] = 0 if nums.any?

  (2..nums.size).each do |i|
      dp1[i] = [dp1[i - 1], dp1[i - 2] + nums[i - 1]].max
      dp2[i] = [dp2[i - 1], dp2[i - 2] + nums[i - 1]].max
  end

  [dp1[nums.size - 1], dp2[nums.size]].max
end