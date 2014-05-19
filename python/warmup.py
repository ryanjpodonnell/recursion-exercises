def range(first, last):
    if first == last:
        return [first]
    else:
        return [first] + range(first + 1, last)
        
# print range(-4,10)