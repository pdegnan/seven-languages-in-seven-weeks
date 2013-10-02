#!/usr/bin/env io

2d := Object clone

2d dim := method( x, y, 
	2d x := x
	2d y := y

	2d xarr := list clone

	for( i, 0, x, 1, 

		yarr := list clone

		for( j, 0, y, 1,
		
			yarr append( 0 )
		
		)

		xarr append( yarr )

	)
	
)

2d get := method( x, y, 
	row := list clone
	if( xarr size > x, row := xarr at( x ), return "Error: that x dimension was never defined" )
	if( row size > y, return row at( y ), return "Error, that y dimension was never defined" )
)

2d set := method( x, y, val, 
	row := list clone
	if( xarr size > x, row := xarr at( x ), return "Error: that x dimension was never defined" )
	if( row size > y, row atPut( y, val ), return "Error, that y dimension was never defined" )

)

2d dumpData := method(
	xarr foreach( row, 
		row println
	)
)

"" println
"declare size" println
"=====" println
2d dim( 5, 2 ) println
"" println

"set and get a value" println
"=====" println
2d set( 2, 2, "foo" ) println
2d get( 2, 2 ) println
"" println

"will fail -- outside bounds" println
"=====" println
2d set( 5, 3, "bar" ) println
2d get( 6, 2 ) println
"" println

"some valid assignments now..." println
"=====" println
2d set( 0, 0, "first!" ) println
2d set( 5, 2, "last" ) println
2d set( 3, 1, "somwhere randomly in the middle" ) println
"" println

"all the data" println
"=====" println
2d dumpData