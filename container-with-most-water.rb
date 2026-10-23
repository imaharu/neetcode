def max_area(height)
   max = 0
   
   left = 0
   right = height.length - 1

   while true do
      break if left >= right

      candidateMax = (right - left) * [height[left], height[right]].min
      max = [candidateMax, max].max
      if height[left] <= height[right]
        left = left + 1
      else
        right = right - 1
      end
   end

   max
end

puts max_area([4,3,2,1,4])