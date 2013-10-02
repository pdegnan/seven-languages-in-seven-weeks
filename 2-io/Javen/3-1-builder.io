/* Modified builder.io */
Builder := Object clone

Builder depth := 0
Builder spaces := 4
Builder prependSpaces := method(numberOfSpaces,
    spacesString := ""
    spacesValue := " "
    for(i, 1, numberOfSpaces,
        spacesString = spacesString .. spacesValue
    )

    return spacesString
)

Builder forward := method(
    spacePrepend := self prependSpaces(self depth)
    writeln(spacePrepend .. "<", call message name, ">")
    
    self depth = self depth + self spaces

    call message arguments foreach(
        arg, 
        content := self doMessage(arg); 
        if(content type == "Sequence",
            spacePrepend := self prependSpaces(self depth)
            writeln( spacePrepend .. content)
            ,
            self depth = self depth - self spaces
        )
        
    )
    spacePrepend := self prependSpaces(self depth)
    writeln(spacePrepend .. "</", call message name, ">"))

Builder  ul(
	li("Io"), 
	li("Lua"), 
	li("JavaScript"))