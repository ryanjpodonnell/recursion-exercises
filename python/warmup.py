def recRange(first, last):
    if first == last:
        return [first]
    else:
        return [first] + recRange(first + 1, last)
        
# print recRange(-4,10)

def sum(arr):
    if len(arr) == 0:
        return 0
    elif len(arr) == 1:
        return arr[0]
    else:
        return arr.pop() + sum(arr)
        
# print sum([5,6,7,8])