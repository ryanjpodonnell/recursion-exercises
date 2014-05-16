def binary_search(array, target)
  mid = array.length / 2

  if array[mid] == target
    return mid
  elsif array[mid] > target
    lower_half = array[0...mid]
    return binary_search(lower_half, target)
  else
    upper_half = array[mid..-1]
    return mid += binary_search(upper_half, target)
  end
end

arr = [2,4,5,6,7,9,12];
p binary_search(arr, 7)
