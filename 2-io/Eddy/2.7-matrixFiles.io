
/**
 * Write a prototype for a two-dimensional list. The dim(x,y) method should
 * allocate a list of y lists that are x elements long. set(x,y,value) should set a value.
 * and get(x,y) should return a value.
 */

 TwoDim := List clone

 TwoDim dim := method(
 	x, // param: number of elements in each list
 	y, // param: number of sub-lists
 	y repeat(
 		l := list()
 		x repeat(l append(nil))
 		self append(l)
 	)
)
TwoDim set := method(
	x, // param: index of element of target sublist
	y, // param: index of the sublist to affect
	v, // param: value to set
	self at(y) atPut(x, v)
)
TwoDim get := method(x,y, self at(y) at(x))

tl := TwoDim clone
tl dim(5,3)
tl set(3,1, "Javenscript!")

f := File with("matrix_write.txt")
(f openForAppending) write(tl asString)

newMatrix := TwoDim clone
//f := File with("matrix_read.txt")
//newMatrix = (f openForReading) read
newMatrix = doFile("matrix_read.txt")
newMatrix get(0,1) println