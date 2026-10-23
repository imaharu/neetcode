def is_valid(s)
    stack = []
    result = true

    s.chars do |c|
      if ["(", "[", "{"].include?(c)
        stack.push c
      else
        poped = stack.pop
        result = false if poped.nil?
        
        result = false if c == ")" && poped !=  "("
        result = false if c == "]" && poped !=  "["
        result = false if c == "}" && poped !=  "{"
      end
    end

    result && stack.empty?
end

puts is_valid("]")