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

def handle root, result
  if root.nil?
    return
  end

  result.push root.val
  handle root.left, result
  handle root.right, result
end

def preorder_traversal(root)
  result = []

  handle root, result
  result
end

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

#       3
#      / \
#     9   20
#        /  \
#       15   7
root = TreeNode.new(1,
  nil,
  TreeNode.new(2, TreeNode.new(3), nil)
)

puts preorder_traversal(root)