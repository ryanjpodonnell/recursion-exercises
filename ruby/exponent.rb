def exponent1(base, n)
  return 1 if n == 0
  return base * exponent1(base, n - 1)
end

def exponent2(base, n)
  return 1 if n.zero?
  if n.even?
    num = exponent2(base, n/2)
    return num * num
  else
    num = exponent2(base, (n - 1) / 2)
    return base * num * num
  end
end
