# add binary search method here
def binary_search(arr, target):
    mid = len(arr) / 2
    
    if arr[mid] == target:
        return mid
    elif target < arr[mid]:
        lower_half = arr[:mid]
        return binary_search(lower_half, target)
    else:
        upper_half = arr[mid:]
        return mid + binary_search(upper_half, target)
        
# arr = [2,4,5,6,7,9,12];
# print binary_search(arr, 2)