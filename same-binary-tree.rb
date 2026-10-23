# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}

def is_same_tree(p, q)
    return true if p.nil? && q.nil?
    return false if (p.nil? && q.val || p.val && q.nil? )
    return false if p.val != q.val

    is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
end


# p = TreeNode.new(3,
#   TreeNode.new(9),
#   TreeNode.new(20, TreeNode.new(15), TreeNode.new(7))
# )

# q = TreeNode.new(3,
#   TreeNode.new(9),
#   TreeNode.new(20, TreeNode.new(15), TreeNode.new(7))
# )

# p = TreeNode.new(1, TreeNode.new(2), nil)
# q = TreeNode.new(1, nil, TreeNode.new(2))

# p = TreeNode.new(1,
#   TreeNode.new(2),   # left
#   nil                # right
# )

# q = TreeNode.new(1,
#   nil,               # left
#   TreeNode.new(2)    # right
# )

p = TreeNode.new(1,
  TreeNode.new(2),   # left
  TreeNode.new(1)    # right
)

q = TreeNode.new(1,
  TreeNode.new(1),   # left
  TreeNode.new(2)    # right
)

# p = TreeNode.new(1,
#   TreeNode.new(2),   # left
#   TreeNode.new(3)    # right
# )

# q = TreeNode.new(1,
#   TreeNode.new(2),   # left
#   TreeNode.new(3)    # right
# )

p is_same_tree(p, q)