# @param {Integer[]} nums
# @return {Integer}
# def max_sub_array(nums)
#     dp = Array.new(nums.length){nil}
#     dp[0] = nums[0]
#     maxSub = nums[0]

#     nums.each_with_index do |n, i|
#       next if i == 0

#       max = [n, dp[i - 1] + n].max
#       dp[i] = max
#       maxSub = max if max > maxSub
#     end

#     maxSub
# end

def max_sub_array(nums)
  current = max_sum = nums[0]

  nums.drop(1).each do |n|
    current = [n, current + n].max
    max_sum = [max_sum, current].max
  end

  max_sum
end

p max_sub_array([-2,1,-3,4,-1,2,1,-5,4])