listToSum := list(list(1,2,3), list(2,3,4), list(5,6,7))

totalSum := 0

listToSum foreach(key, subDimension,
    totalSum = totalSum + (subDimension sum)
)

totalSum println