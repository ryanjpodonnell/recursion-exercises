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
        if index is None:
            return None
        return mid + 1 + index
        
