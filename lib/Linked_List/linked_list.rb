class Node
  attr_accessor :data, :next

  def initalize(data, next_node=nil)
    @data = data
    @next = next_node
  end
end

class List
  attr_accessor :head

  def initialize(node)
    @head = node
  end

  def insert(data)
    node = Node.new(data)
    temp = head
    node.next = 
  end

end