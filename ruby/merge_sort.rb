def merge_sort(arr)
  return arr if arr.count == 1
  mid = arr.count / 2
  left, right = arr.take(mid), arr.drop(mid)
  
  merge(merge_sort(left), merge_sort(right))
end


def merge(left, right)
  merged = []
  until left.empty? || right.empty?
    if left.first < right.first
      merged << left.shift
    elsif right.first < left.first
      merged << right.shift
    end
  end
  merged + left + right
end

# p merge_sort([5,4,3,2,1])