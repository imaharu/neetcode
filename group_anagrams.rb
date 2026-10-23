# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  anagrams = {}
  strs.each do |str|
    hash = {}
    str.chars.each do |c|
      if hash.has_key? c
        hash[c] += 1
      else
        hash[c] = 1
      end 
    end

    if anagrams.has_key? hash
      anagrams[hash] << str
    else
      anagrams[hash] = [str]
    end
  end

  anagrams.values
end

p group_anagrams(["eat","tea","tan","ate","nat","bat"])

def group_anagrams_llm(strs)
  anagrams = Hash.new { |h, k| h[k] = [] }

  strs.each do |str|
    key = Hash.new(0)
    str.each_char { |c| key[c] += 1 }
    anagrams[key] << str
  end

  anagrams.values
end