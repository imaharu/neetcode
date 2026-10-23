# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {List[int]}

def handleDfs root, result
  if root.nil?
    return []
  end

  root.children.each do |c|
    handleDfs(c, result)
  end

  result.push(root.val)

  result
end

def postorder(root)
    result = []
    handleDfs(root, result)
end