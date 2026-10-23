def two_sum(nums, target)
  hash = {}
  outputs = nil
  nums.each_with_index do |value, index|
    diff = target - value
    if hash.has_key?(value)
      outputs = [hash[value], index]
      break
    end
    hash[diff] = index
  end

  outputs
end

p two_sum([2,7,11,15], 9)
p two_sum([3,2,4], 6)
