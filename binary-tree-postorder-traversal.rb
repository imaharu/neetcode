def handleDfs root, result
  if root.nil?
    return []
  end

  handleDfs(root.left, result)
  handleDfs(root.right, result)

  result.push root.val

  result
end

def postorder_traversal(root)
    result = handleDfs(root, [])
ends