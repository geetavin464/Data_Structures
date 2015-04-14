class Stack

  def initialize
    @stack = []
  end 

  def top
    @stack.last
  end

  def push(x)
    @stack << x
  end

  def pop
    raise "Stack Empty" if empty?
    @stack.pop
  end

  def empty?
    @stack.empty?
  end
end