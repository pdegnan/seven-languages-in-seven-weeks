
x := list(10,25,30)
y := list(10,"oops",40)

List myAverage := method(
	(self sum) / (self size)
)

List myAverageWithException := method(
	self foreach(value, 
		if(value hasProto(Number),
			nil,
			Exception raise("Found a non-numeric value: " .. value))
		)
	(self sum) / (self size)
)

x myAverage println
y myAverageWithException println