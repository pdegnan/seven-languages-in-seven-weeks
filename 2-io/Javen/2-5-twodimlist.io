Tdml := List clone

Tdml dim := method(x, y,

    self setSize(y)

    self atPut(0, List clone)

    for(i, 0, (y-1), 
        subList := List clone
        subList setSize(x)
        self atPut(i, subList)
    )
)

Tdml set := method(x, y, value,
    currentList := self at(x-1)
    currentList atPut(y-1, value)
)

Tdml get := method(x, y, 
    currentList := self at(x-1)
    currentList at(y-1) println
)

Tdml writeToFile := method(
    fileToWrite := File with("matrix.txt")
    fileToWrite remove
    fileToWrite openForUpdating

    self foreach(i, v, 
        v foreach(subV,
            fileToWrite write(subV .. " ")    
        )
        fileToWrite write("\n")
    )

    fileToWrite close
)

testing_list := Tdml clone
testing_list dim(2,3)
testing_list set(1, 2, 50)
testing_list set(1, 1, 100)
testing_list set(2, 1, 150)
testing_list set(2, 2, 200)
testing_list set(3, 1, 250)
testing_list set(3, 2, 300)

testing_list writeToFile()