def merge_sort(arr):
    if len(arr) == 1:
        return arr
      
    mid = len(arr) / 2
    left, right = arr[:mid], arr[mid:]

    return merge(merge_sort(left), merge_sort(right))

def merge(left, right):
    merged = []
    
    while len(left) > 0 and len(right) > 0:
        if left[0] < right[0]:
            merged.append(left.pop(0))
        else:
            merged.append(right.pop(0))
    
    return merged + left + right

# print merge_sort([5,4,3,2,1])