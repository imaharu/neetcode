# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
    res = false


    nums.each_with_index do |n1, i1|
      ((i1 + 1)..(i1 + k)).each do |n2|
        if n1 == nums[n2]
          return true
        end
      end
    end

    res
end


def contains_nearby_duplicate(nums, k)
    last_seen = {}

    nums.each_with_index do |n, i|
      return true if last_seen[n] && last_seen[n] >= i - k
      last_seen[n] = i
    end


    false
end

p contains_nearby_duplicate([1,0,1,1], k = 1)
p contains_nearby_duplicate([1,2,3,1], k = 3)
p contains_nearby_duplicate([1,2,3,1,2,3], k = 2)
p contains_nearby_duplicate([99,99], 2)