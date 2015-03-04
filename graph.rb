require 'set'

class Graph

  def bfs(origin, &visit)
    queued = Set.new()
    queue = []
    queue.push(origin)
    until queue.empty?()
      current=queue.shift
  end


end