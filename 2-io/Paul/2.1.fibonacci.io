#!/usr/bin/env io

fibber := method( fibIdx, 
	if ( fibIdx < 1, return "hey, 1 or greater only please" )
	if ( fibIdx == 1, return 1 )
	if ( fibIdx == 2, return 1 )
	return fibber( fibIdx - 1 ) + fibber( fibIdx - 2 )
)

for( i, 0, 10, write("fibonacci( ", i,  " ):", fibber( i ),  "\n") )

