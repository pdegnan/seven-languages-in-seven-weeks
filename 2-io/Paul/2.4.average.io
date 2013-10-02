#!/usr/bin/env io

average_havin_list := list( 3, 7, 1, 9, 0, 4, 1, 6, 8, 3, 5, 4, 7, 8, 9 )

average_havin_list myAverage := method(
	sum := 0
	average_havin_list foreach( element,
		sum = sum + element 
	)
	return sum / average_havin_list size 
)

average_havin_list myAverage println