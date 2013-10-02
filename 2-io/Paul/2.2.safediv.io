#!/usr/bin/env io

//pretty much found the exact answer by accident on stackoverflow. but forced myself to retype it.
//http://stackoverflow.com/questions/4262196/how-do-you-replace-existing-operators-without-invoking-them-in-io
//also good stuff at http://www.chrisumbel.com/article/io_language_prototype

Number oldDiv := Number getSlot( "/" )

Number / := method( d, 
	if( d == 0, 0, self oldDiv( d ) )
)

write("4 / 2 = ", 4 / 2 , "\n")
write("5 / 2 = ", 5 / 2 , "\n")
write("4 / 0 = ", 4 / 0 , "\n")
