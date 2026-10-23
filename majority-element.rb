# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    hash = Hash.new {0}

    result = nil

    nums.each do |n|
      hash[n] += 1
      if hash[n] > (nums.length / 2)
        result = n
        break
      end
    end

    result
end

p majority_element([3,2,3])
p majority_element([2,2,1,1,1,2,2])