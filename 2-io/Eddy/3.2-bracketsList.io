
// create a list syntax that uses brackets
// e.g. [3,4,"2"] converts to list(3,4,"2")

// I believe you can do this in Ruby
// e.g. http://ruby-doc.org/core-1.8.7/Array.html#method-i-5B-5D, but defined it in the Kernel module
// Io seems to have direct runtime mapping to the interpreter

squareBrackets := method(
	arr := list()
	call message arguments foreach(arg,
		arr push(doMessage(arg)))
)

// this one resolves as expected
["rocket", "dog"] println
// this one is trying to use a nested list
// as long as the argument is passed to doMessage, it's cool
[3, 4, ["nested_list?"], 6] println