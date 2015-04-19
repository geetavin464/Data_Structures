module HashFnExamples

  def simple_hash(str)
    return 0 if str.empty?
    return str[0].ord - 'a'.ord
  end


  def normal_hash(str)
    return str.chars.inject(0) do |sum, char|
      sum + char.ord - 'a'.ord
    end
  end 

  def complex_hash(str)
    count = 16
    hash_value = 0
    str.each_char do |char|
      count -=1
      break unless count > 0
      hash_value += char.ord - 'a'.ord << (count %4)
    end
    return hash_value
  end
end
