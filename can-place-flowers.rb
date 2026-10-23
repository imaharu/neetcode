# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
# def can_place_flowers(flowerbed, n)
#     consecutiveTimes = 0
#     prevflowerStatus = nil
#     res = 0
    
#     flowerbed.each do |flower|
#       if prevflowerStatus.nil?
#         prevflowerStatus = flower
#         consecutiveTimes += 1
#       elsif flower == prevflowerStatus || prevflowerStatus.nil?
#         consecutiveTimes += 1
#       else
#         res += (consecutiveTimes -1) / 2
#         consecutiveTimes = 1
#         prevflowerStatus = flower
#       end
#     end

#     res == n
# end

def can_place_flowers(flowerbed, n)
    consecutiveTimes = 0
    prevflowerStatus = 0

    f = [0, flowerbed, 0].flatten
    res = 0
    
    f.each_with_index do |flower, index|
      if flower == prevflowerStatus
        consecutiveTimes += 1
      else
        res += (consecutiveTimes) / 2
        consecutiveTimes = 1
        prevflowerStatus = flower
      end
    end

    res == n
end

p can_place_flowers([1,0,0,0,1,0,0], n = 2)