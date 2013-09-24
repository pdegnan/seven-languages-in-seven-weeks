numberSet = (1..16).to_a

currentPosition = 1
printSet = []

numberSet.each {|i| 
    printSet[currentPosition] = i
    if currentPosition == 4
        puts printSet
        currentPosition = 1
    else
        currentPosition = currentPosition + 1
    end
}


#Utilizing each_slice.
numberSet.each_slice(4) {|i| p i }