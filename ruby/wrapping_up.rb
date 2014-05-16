def merge_sort(array)
  return array if array.length == 1

  half1 = array[0...array.length / 2]
  half2 = array[(array.length / 2)..-1]

  a = merge_sort(half1)
  b = merge_sort(half2)
  merge(a, b)

end

def merge(half1, half2)
  combined = []

  until half1.empty? && half2.empty?
    if half2.empty?
      combined << half1.shift
    elsif half1.empty? || half1[0] > half2[0]
      combined << half2.shift
    else
      combined << half1.shift
    end
  end
end

def subsets(arr)
  if arr.empty?
    return [[]]
  else
    saved_element = arr.pop
    subarrays = subsets(arr)
    return subarrays + subarrays.map { |sub| sub + [saved_element] }
  end
end