_arr      = (1..16).to_a
_tempArr = []
_arr.each { |i|
	_tempArr.push(i)
	(puts _tempArr.join(",") ; _tempArr = []) if (i % 4 == 0)
}
