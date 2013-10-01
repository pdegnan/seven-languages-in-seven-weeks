fib := method( nth,

    i := 1
    fibValue := 1
    fibAddValue := 1
    fibHolderValue := 0
    nth = nth - 2

    

    while(i <= nth,
        fibHolderValue := fibValue
        
        fibValue = fibValue + fibAddValue
        
        fibAddValue = fibHolderValue

        i = i + 1
    )

    fibValue println    

)

fib(8)