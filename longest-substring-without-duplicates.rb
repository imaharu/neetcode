def length_of_longest_substring(s)
  last_seen = {}
  start = 0
  allChars = s.chars

  maxLongestSubstring = 0

  allChars.each_with_index do |c, index|
    start = [start, last_seen[c] + 1].max if last_seen.key?(c)

    last_seen[c] = index

    maxLongestSubstring = [maxLongestSubstring, index - start + 1].max
  end 

  maxLongestSubstring
end

puts length_of_longest_substring("ccbbcc")
