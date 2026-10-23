# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    l, r = 0, nums.length - 1
    res = -1
    while l <= r
        candidate = (l + r) / 2
        if nums[candidate] == target
            res = candidate
            break
        elsif target < nums[candidate]
            r = candidate - 1
        else
            l = candidate + 1
        end
    end

    res
end

p search([-1,0,3,5,9,12], 2)