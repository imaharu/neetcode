def top_k_frequent(nums, k)
  hash = Hash.new { |h, k| h[k] = 0}

  nums.each do |n|
    hash[n] += 1
  end

  reverseTops = []

  hash.each do |h|
    key = h[1]
    value = h[0]
    if reverseTops[key].nil?
      reverseTops[key] = [value]
    else
      reverseTops[key] << value
    end
  end

  result = []

  reverseTops.reverse.each do |topArray|
    if topArray.nil?
      next
    end
    result += topArray

    if result.length >= k
      break
    end
  end


  result[0...k]
end


puts top_k_frequent([1,1,1,2,2,3], k = 2).inspect

puts top_k_frequent([1], k = 1).inspect

puts top_k_frequent([1,2,1,2,1,2,3,1,3,2], k = 2).inspect

puts top_k_frequent([5,3,1,1,1,3,73,1], k = 2).inspect

puts top_k_frequent([7,7], k = 1).inspect