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

# def handleDfs root, stack, maxDepth
#   if root.nil?
#     return stack, [maxDepth, stack.length].max
#   end

#   stack.push root.val
#   stack, maxDepth = handleDfs(root.left, stack, maxDepth)
#   stack, maxDepth = handleDfs(root.right, stack, maxDepth)
#   stack.pop                                      
#   return stack, maxDepth
# end

# def max_depth(root)
#   stack = []
  
#   stack, maxDepth = handleDfs(root, stack, 0)
#   maxDepth
# end

def max_depth(root)
  if root.nil?
    return 0
  end

  1 + [max_depth(root.left), max_depth(root.right)].max
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
root = TreeNode.new(3,
  TreeNode.new(9),
  TreeNode.new(20, TreeNode.new(15), TreeNode.new(7))
)

puts max_depth(root)