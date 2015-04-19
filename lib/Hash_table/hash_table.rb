
class Item < Struct.new(:key, :value)

end


class HashTable
  attr_accessor :entries

  def initialize(size, hash_fn=nil)
    alloc(size)
    @hash_fn = hash_fn
  end 

  def hash_fn(value)
    if @hash_fn
      return @hash_fn.call(value)
    else
      return complex_hash(value)
    end
  end

  def insert(key, value)
    index = hash_fn(key) % @entries.size
    @entries[index] = {key: key, value: value}
  end

  def [](key)
    
  end

  private

  def alloc(size)
    @entries = Array.new(size)
  end

end