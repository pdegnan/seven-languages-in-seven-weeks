
Builder := Object clone
Builder forward := method(
  indent := if(call sender == Builder, "  ", "")
  writeln(indent, "<", call message name, ">")
  call message arguments foreach(
	arg, 
	content := self doMessage(arg); 
	if(content type == "Sequence", writeln(indent,"  ", content))
  )
  writeln(indent, "</", call message name, ">"))
Builder  ul(
	li("Io"), 
	li("Lua"), 
	li("JavaScript")
)