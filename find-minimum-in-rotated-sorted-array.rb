def find_min(nums)
    l, r = 0, nums.length - 1

    while l < r
      candidateIndex = (l + r) / 2

      if nums[candidateIndex] > nums[r]
        l = candidateIndex + 1
      else
        r = candidateIndex
      end
    end

    nums[l]
end

puts find_min([3,4,5,6,1,2])