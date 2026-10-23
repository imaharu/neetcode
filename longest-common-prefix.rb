# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    return strs[0] if strs.length == 1

    maxPrefix = strs[0]
    strs.each do |str|
      i = 0
      maxPrefix.each_char do |c|
        if c != str[i]
          if i == 0
            maxPrefix = ""
          else
            maxPrefix = maxPrefix[0..i - 1]
          end
          break
        end
        i += 1
      end
    end

    maxPrefix
end

p longest_common_prefix(["dog","racecar","car"])
# p longest_common_prefix(["flower","flow","flight"])
# p longest_common_prefix(["ab", "a"])