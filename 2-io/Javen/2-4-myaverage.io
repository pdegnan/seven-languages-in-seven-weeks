List myAverage := method(

if( (self size == 0), 
    nil println
    return
)

self foreach(valueToVerify,
    if(valueToVerify type != "Number", 
        Exception raise("Value is not a Number.")
    )
)

computedAverage := self average
computedAverage println

)


myList := list(2,4,6,8)
myList myAverage