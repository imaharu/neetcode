# @param {String} s
# @return {String}
def longest_palindrome(s)
   maxLength = 0
   canditate = nil
   s.length.times do |ci|
      l, r = ci, ci
      while s[l] == s[r] && l >= 0 && r < s.length
        currenctLength = r - l
        if currenctLength >= maxLength
          maxLength = currenctLength
          canditate = s[l..r]
        end

        l -= 1
        r += 1
      end

      l, r = ci, ci + 1
      while s[l] == s[r] && l >= 0 && r < s.length
        currenctLength = r - l
        if currenctLength >= maxLength
          maxLength = currenctLength
          canditate = s[l..r]
        end

        l -= 1
        r += 1
      end      
   end

   canditate
end

p longest_palindrome("babad")
p longest_palindrome("cbbd")