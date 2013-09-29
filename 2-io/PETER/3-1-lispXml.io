# START:range
OperatorTable addAssignOperator(":", "atPutNumber")
# END:range
# START:curlyBrackets
curlyBrackets := method(
  r := Map clone
  call message arguments foreach(arg,
       r doMessage(arg)
       )
  r
)
# END:curlyBrackets
# START:atPutNumber
Map atPutNumber := method(
  self atPut(
       call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
       call evalArgAt(1))
)

// set up the object
Builder := Object clone do(
  init := method(
    self it ::= 0
    self out ::= "" asMutable
    self getOut := method(
      return self out
    )
    self getIt := method(
      return self it
    )
  )
)

// set up an iterator slot for the 



// this handles attributes from the lisp stuff
formatFromMap := method(
	m,
  // set up a mutable string
	out := " " asMutable

  // for the map M, iterate over the keys and the values
  // append the key and value in key = value form
	m foreach(
		key,
		value,
		out := out .. key .. "=\"" .. value .. "\""
	)
	return out
)


// method missing
Builder forward := method(
  writeln("calling")
  call message println
  call message arguments println
  call message arguments isEmpty println
  call message name println

  if(
    call message arguments isEmpty,
    return
  )
  writeln("getting: " )
  self getIt println

  // set the tag label to the message name
  tagLabel := call message name

  // define a variable from the first argument for inspection
  fst := call message arguments first

  // set up a mutable attribute string to hold any attributes
  attributeString := "" asMutable
  if(
  	fst != nil,

    // define the first argument in order to inspect it
  	m := doMessage(fst)

  	if(
      // if it's a map...
  		m type == "Map",
      // if the type of the first message is a map, xml attributes from it's values
  		attributeString = attributeString .. formatFromMap(m)

      // pop the first argument off the argument list so the map doesn't get processed again
  		realargs := call message arguments
  		realargs removeFirst
  		call message setArguments(realargs)
  	)

  )


  // add tabs up to the current iteration level
  self getIt repeat(  self setOut(self out .. "\t"))
  // write the opening tag
  self setOut( self getOut .. "<" .. tagLabel .. attributeString .. ">" .. "\n" )

  self setIt (self getIt + 1)

  // for each of the rest of the arguments
  call message arguments foreach(
  	arg, 
    tst :=  doMessage(arg, Object clone)
    // call the forward function recursively
    b := Builder clone 
    b setIt(self getIt) 
    b doMessage(arg) 

    //b println
  	content := b getOut


    //
    if(
      content size == 0,
      self getIt repeat(self setOut(self getOut .. "\t"))
      self setOut(self getOut .. tst  .. "\n"),
      self setOut(self getOut ..  content)
    )

  )
  // pull the iterator back for the closing tags
  self setIt(self it - 1)
  self getIt repeat( self setOut( out .. "\t"))
  self setOut(self getOut .. "</" .. (call message name) .. ">" .. "\n")
  return self getOut
)


str := "ul(
  {\"author\":\"person\"},
  li(
    ul(
        li(
          {\"author\":\"person\"},
          \"Python\"
          )
      )
  ),
	li(\"Io\"), 
	li(\"Lua\"), 
	li(\"JavaScript\")
  )"

z := Builder clone
z println
z getOut println
x := z doString(str) 
x println
/*Builder out println*/


