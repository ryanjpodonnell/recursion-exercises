sum'::[Int]->Int
sum' n = 
	if length n == 1 
	then head n 
	else head n + sum' (tail n)
	
caseSum::[Int]->Int
caseSum ns = case ns of 
	[] -> 0
	[n] -> n
	ns -> head ns + caseSum (tail ns)


-- sum already built in to Haskell:
-- main = print (sum [4,5,6])