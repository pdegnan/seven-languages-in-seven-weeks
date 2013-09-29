
Builder := Object clone
Builder forward := method(
  write("<", call message name)

  msg_args := call message arguments
  if(msg_args size > 1, writeln(">"))
  msg_args foreach(
	arg, 
	content := self doMessage(arg)
	if(content type == "Sequence", writeln(">\n", content))
  )
  writeln("</", call message name, ">")
)

Builder curlyBrackets := method(
	m := Map clone
	call message arguments foreach(
		arg,
		item := arg asString split(":")
		writeln(" ", item at(0) strip, "=", item at(1) strip, ">")
	)
)

Builder  ul(
	li("Io"), 
	li("Lua"), 
	li("JavaScript"))

Builder html({ "x":"sdfwef" })