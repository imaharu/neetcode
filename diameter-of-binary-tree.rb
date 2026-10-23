# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}

def handleDfs(root, best)
  return 0 if root.nil?

  maxL = handleDfs(root.left, best)
  maxR = handleDfs(root.right, best)

  best[0] = [best[0], maxL + maxR].max  # 直径の候補を記録
  [maxL, maxR].max + 1                  # 親には高さを返す
end

def diameter_of_binary_tree(root)
  best = [0]
  handleDfs(root, best)
  best[0]
end