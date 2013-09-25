2d := Object clone;

List gen := method(
	x := Random value
	(x*10) repeat(
		self push(
			((Random value) * 10) ceil
		)
	)	
)

List uberPush := method(
	call message arguments foreach(
		val,
		
			self doMessage(val)
		
	)
)

List summate := method(
	out := 0
	self foreach(
		val,

			out = out + val sum
		
	)
	return out
)

2d lists := List clone;



2d generate := method(
	x := Random value
	(x*10) repeat(	
		l := List clone;
		l uberPush(gen)
		self lists push(l)
	)


)






//x = floor(x*10)



//2d println

2d generate println
2d lists summate println