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
# @return {TreeNode}

def handleBfs(root, res)
  if root.nil?
    return 
  end

  handleDfs(root.left, res)
  res.push root.val
  handleDfs(root.right, res)
end

def invert_tree(root)
  res = []
  depth = 1

  handleBfs(root, res, depth)
  res
end