
def insertion_sort(arr)

  1.upto(arr.size-1).each do |i|
    val = arr[i]
    (i-1).downto(0).each do |j|
      break if arr[j] < val
      arr[j], arr[j+1] = arr[j+1], arr[j]
    end
  end
  arr.inspect
end



puts insertion_sort([4,6,3,7,9,1,2])