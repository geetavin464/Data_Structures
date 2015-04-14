
class Queue
  def initialize
    @queue = []
  end

  def enqueue(x)
    @queue << x
  end

  def dequeue
    rails 'queue is empty' if empty?
    @queue.shift
  end

  def peek
    @queue.first
  end

  def empty?
    @queue.empty?
  end
end

q1 = Queue.new
q1.enqueue(1)
q1.enqueue(2)
q1.enqueue(3)
q1.dequeue
q1.dequeue
puts q1.inspect
