# 0 1 1 2 3 5 8 13 21


def fib_iterative(n)
  return [] if n <= 0
  fib_array = []
  fib_array << 0 if n >= 1
  fib_array << 1 if n >= 2

  (n-2).times do
    fib_array << fib_array[-1] + fib_array[-2]
  end
  fib_array
end

def fib_recursive(n)
  return [] if n <= 0
  return [0] if n == 1
  return [0,1] if n == 2

  fibs_before = fib_recursive(n-1)
  fibs_before << fibs_before[-1] + fibs_before[-2]

  fibs_before
end

