def binary_search(array, target)
  location = array.length / 2

  if array[location] == target
    return location
  elsif array[location] > target
    halved_array = array[0...array.length / 2]
    return binary_search(halved_array, target)
  else
    halved_array = array[(array.length / 2)..-1]
    return location += binary_search(halved_array, target)
  end
end

