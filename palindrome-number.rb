def is_palindrome(x)
    chars = x.to_s.chars

    l, r = 0, chars.length - 1
    result = true
    while l <= r
        if chars[l] != chars[r]
            result = false
            break
        end

        l += 1
        r -= 1
    end

    result
end

puts is_palindrome(-121)