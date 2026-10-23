# @param {Integer[]} nums
# @return {Integer[]}
def get_concatenation(nums)
    length = nums.length
    res = Array.new(length * 2)
    nums.each_with_index do |n, index|
      res[index] = n
      res[index + length] = n
    end

    res
end

p get_concatenation([1,2,3])