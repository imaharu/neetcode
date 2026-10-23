# @param {String} s
# @return {Boolean}
def valid_palindrome(s)
    cosumed = false

    length = s.length

    left = 0
    right = length - 1

    while left <= right
      if s[left] != s[right]
        return false if cosumed

        if s[left + 1] == s[right]
          left += 2
          right -= 1
          cosumed = true
        elsif s[left] == s[right - 1]
          left += 1
          right -= 2
          cosumed = true
        else
          return false
        end
      else
        left += 1
        right -= 1
      end
    end

    true
end

p valid_palindrome("aguokepatgbnvfqmgmlcupuufxoohdfpgjdmysgvhmvffcnqxjjxqncffvmhvgsymdjgpfdhooxfuupuculmgmqfvnbgtapekouga")