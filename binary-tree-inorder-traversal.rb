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
# @return {Integer[]}

def handleDfs(root, res)
  if root.nil?
    return 
  end

  handleDfs(root.left, res)
  res.push root.val
  handleDfs(root.right, res)
end

def inorder_traversal(root)
   res = []

   handleDfs(root, res)
   res
end