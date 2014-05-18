# add binary search method here
def binary_search(arr, target):
    if not arr:
        return None 
        
    mid = len(arr) / 2
    
    if arr[mid] == target:
        return mid
    elif target < arr[mid]:
        lower_half = arr[:mid]
        return binary_search(lower_half, target)
    else:
        upper_half = arr[(mid + 1):]
        index = binary_search(upper_half, target)
        return None if index is None else (mid + 1 + index)

        
arr = [3,6,9,12,15,18];
print binary_search(arr, 3)