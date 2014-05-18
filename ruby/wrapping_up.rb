
def subsets(arr)
  if arr.empty?
    return [[]]
  else
    saved_element = arr.pop
    subarrays = subsets(arr)
    return subarrays + subarrays.map { |sub| sub + [saved_element] }
  end
end