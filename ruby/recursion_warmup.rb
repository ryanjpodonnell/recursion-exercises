def range(first, last)
  if first == last
    return [last]
  else
    [first] + range(first + 1, last)
  end
end

def recursive_sum(array)
  return if array.empty?
  return array.first if array.size == 1
  return array.pop + recursive_sum(array)
end

def iterative_sum(array)
  if array.empty?
    puts "Error!"
    return
  end
  total = 0
  array.each do |num|
    total += num
  end
  total
end
