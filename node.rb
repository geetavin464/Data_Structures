class Node
  attr_accesor :value, :neighbors

  def initialize(value)
    @value = value
    @neighbors = []
  end

end