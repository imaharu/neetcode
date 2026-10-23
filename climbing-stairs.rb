# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  if n == 1
    return 1
  end
  if n == 2
    return 2
  end
  
  n1, n2 = 2, 1
  (n - 2).times do
    n1, n2 = n1 + n2, n1
  end

  n1
end

p climb_stairs(4)