def recRange(first, last):
    if first == last:
        return [first]
    else:
        return [first] + recRange(first + 1, last)
        
# print recRange(-4,10)