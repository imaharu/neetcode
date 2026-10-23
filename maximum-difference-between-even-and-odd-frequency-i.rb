# @param {String} s
# @return {Integer}
def max_difference(s)
    freq = Hash.new {0}
    
    s.length.times do |i|
      freq[s[i]] += 1
    end

    maxOdd = 0
    maxEven = 200

    freq.each_key do |key|
      if freq[key].even?
        maxEven = [maxEven, freq[key]].min
      else
        maxOdd = [maxOdd, freq[key]].max
      end
    end

    maxOdd - maxEven
end

p max_difference("mmsmsym")