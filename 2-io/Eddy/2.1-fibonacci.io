
# 1, 1, 2, 3, 5, 8, 13, 21 ... fib(n)
# lets pass a List object to track the summations

# n is the limit
# fibSequence is the accumulating sequence of numbers
Object fib := method( n, fibSequence,
	if(fibSequence == nil,
		fibSequence := list(1)
	)
	if (fibSequence last > n, return fibSequence)
	next := if(fibSequence size > 1,
		fibSequence clone sliceInPlace(-2) sum,
		1)
	fibSequence append(next)
	fib(n, fibSequence)
)

fib(20) println
fib(100) join(", ") println