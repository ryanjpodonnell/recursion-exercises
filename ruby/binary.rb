def binary_search(array, target)
  return nil if array.empty?

  mid = array.length / 2

  if array[mid] == target
    return mid
  elsif array[mid] > target
    lower_half = array[0...mid]
    return binary_search(lower_half, target)
  else
    upper_half = array[(mid + 1)..-1]
    index = binary_search(upper_half, target)
    return nil if index.nil?
    mid + 1 + index
  end
end

# arr = [2,4,5,6,7,9,12]
# p binary_search(arr, 7)
