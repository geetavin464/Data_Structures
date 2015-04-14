class Heap
  attr_accessor :array

  def initialize(array, compare = nil)
    @compare = compare
    @array = array
    @array.each_index do |index|
      parent = parent_index(index)

      until (index == parent || compare(parent, index))
        @array[parent], @array[index] = @array[index], @array[parent]
        index = parent
        parent = parent_index(index)
      end
    end
  end

  def [](index)
    return @array[index]
  end

  def []=(index, value)
    @array[index] = value
  end

  def size
    return @array.size
  end

  def lchild_index(index)
    return index*2+1
  end

  def rchild_index(index)
    return index*2+2
  end

  def parent_index(index)
    return (index != 0 )? (index -1)/2 : 0
  end

  private
    def compare(lhs, rhs)
      unless @compare
        return @array[lhs] >= @array[rhs]
      end
      return @compare.call(@array[lhs], @array[rhs])     
    end

end