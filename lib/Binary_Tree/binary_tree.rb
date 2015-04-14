class TreeNode
  attr_accessor :data, :left, :right
  
  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end
end

class Tree
  attr_accessor :root

  def intialize
    @root = nil
  end

  def insert_node(node, val)
    return TreeNode.new(val) unless node
    if val < node.data
      node.left = insert_node(node.left, val)
    else
      node.right = insert_node(node.right, val)
    end
    return node
  end
end