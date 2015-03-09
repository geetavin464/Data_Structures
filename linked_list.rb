require 'pry'
class Node
  attr_accessor :data, :next

  def initialize(data, next_node=nil)
    @data = data
    @next = next_node
  end
end

class List
  attr_accessor :head

  def initialize(data)
    @head = Node.new(data)
  end

  # Insert - Constant Time O(1)
  def insert(data)
    @head = Node.new(data, @head)
  end

  def is_empty?
    if @head.nil?
      return true 
    else
      return false
    end
  end

  # Find - Linear Time O(n)
  def find(data)
    item = @head
    while(item)
      if item.data == data
        return true
      end
      item = item.next
    end
    return false
  end

  def reverse
    item = @head
    temp_prv = temp_next = nil
    while(item)
      temp_next = item.next
      item.next = temp_prv
      temp_prv = item
      item = temp_next
    end
    @head = temp_prv
  end
end

# 2.0.0-p247 :003 > l1 = List.new(1)
#  => #<List:0x007fc3fb0f1bf0 @head=#<Node:0x007fc3fb0f1bc8 @data=1, @next=nil>>
# 2.0.0-p247 :004 > l1.insert(1)
#  => #<Node:0x007fc3fb1030f8 @data=1, @next=#<Node:0x007fc3fb0f1bc8 @data=1, @next=nil>>
# 2.0.0-p247 :005 > l1.insert(2)
#  => #<Node:0x007fc3fb108710 @data=2, @next=#<Node:0x007fc3fb1030f8 @data=1, @next=#<Node:0x007fc3fb0f1bc8 @data=1, @next=nil>>>
# 2.0.0-p247 :006 > l1.insert(3)
#  => #<Node:0x007fc3fb11a0c8 @data=3, @next=#<Node:0x007fc3fb108710 @data=2, @next=#<Node:0x007fc3fb1030f8 @data=1, @next=#<Node:0x007fc3fb0f1bc8 @data=1, @next=nil>>>>
# 2.0.0-p247 :007 > l1.reverse
#  => #<Node:0x007fc3fb0f1bc8 @data=1, @next=#<Node:0x007fc3fb1030f8 @data=1, @next=#<Node:0x007fc3fb108710 @data=2, @next=#<Node:0x007fc3fb11a0c8 @data=3, @next=nil>>>>