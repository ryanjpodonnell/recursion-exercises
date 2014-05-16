fib::Int->Int
fib 1 = 0
fib 2 = 1
fib n = fib (n-1) + fib (n-2)

fibList::Int->[Int]
fibList n = map fib [1..n]

-- combined version...
fib'::Int->[Int]
fib' 0 = [0]
fib' 1 = [0, 1]
fib' n = fib' (n-1) ++ [last (fib' (n-1)) + last (fib' (n-2))]