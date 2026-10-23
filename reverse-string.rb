def reverse_string(s)
    left,right = 0, s.length - 1

    while left <= right
      tmpLeft = s[left]
      s[left] = s[right]
      s[right] = tmpLeft

      left += 1
      right -= 1
    end

    s
end

puts reverse_string(["H","a","n","n","a","h"]).inspect