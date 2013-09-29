
subArrays := list(
	list(2, 4, 6, 5),
	list(6, 1, 7, 2),
	list(3, 6, 2, 9)
)

delim := "," # need this to avoid Io syntax puke
"Sum of #{subArrays flatten join(delim)} = " interpolate print
subArrays flatten sum println