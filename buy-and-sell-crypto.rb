def max_profit(prices)
    cheapPrice = prices.first
    profit = 0

    prices.each do |price|
      cheapPrice = price if price <= cheapPrice
      profit = [price - cheapPrice, profit].max
    end

    profit
end

puts max_profit([10,1,5,6,7,1])
puts max_profit([7,1,5,3,6,4])
puts max_profit([10,8,7,5,2])