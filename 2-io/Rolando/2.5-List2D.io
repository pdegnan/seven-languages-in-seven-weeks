List2D := List clone

List2D dim := method(x, y, 
    for(i, 0, x - 1, 
        
        self _y := List clone
        for(i, 0, y - 1,
            self _y push(0)
        )

        self push(self _y)
    )
)

List2D set := method(val, x, y,
    self at(x) atPut (y, val) 
)

List2D get := method(x, y,
    return self at(x) at(y)
)


batStuff := List2D clone

batStuff dim(4, 8)
batStuff println

batStuff set("BATSIGNAL", 3, 2)
batStuff get(3, 2) println

f := File with("save.txt")
f remove
f openForUpdating
f write(batStuff asString)
f write("\nand more stuff here")
f close

r := File with("read.txt")
fromFile := r readLines at(0)

