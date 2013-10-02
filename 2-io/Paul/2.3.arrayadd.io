#!/usr/bin/env io

2darr := list clone

for( i, 0, 99, 10, 

	1darr := list clone

	for( j, 1, 10, 
	
		1darr append( i+j )
	
	)

	2darr append( 1darr )

)

2darr println
"\n" println

total := 0

2darr foreach( row, 

	row foreach( element,

		total = element + total

	)

)

total println
"\n" println
