# @param {Integer[]} nums
# @return {Boolean}
# def can_jump(nums)
#     return true if nums.length == 1
#     jumped = Array.new(nums.length){ false }
#     (nums.length - 1).times do |i|
#       next unless jumped[i]
#       jumped.fill(true, i, nums[i] + 1)
#     end


#     jumped.last
# end

def can_jump(nums)
    max_reach = 0
    nums.each_with_index do |n, i|
      return false if i > max_reach
      max_reach = [max_reach, i + n].max
    end

    true
end

p can_jump([0,2,1])