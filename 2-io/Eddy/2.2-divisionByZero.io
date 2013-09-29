
// First preserve the old division method
// Ruby has a similar technique "alias_method"
Number oldDiv := Number getSlot("/")

// Next, redefine the division method with a custom one
// if needed fallback on the old division method we preserved
// the numerator is the "call target" of the method
// the denominator is the first and only argument
Number setSlot("/", method(denominator,
	numerator := call target
	"n=#{numerator} d=#{denominator}" interpolate println
	if(denominator==0, return 0)
	numerator oldDiv(denominator)
))

(12/6) println
(11/0) println