Hawkeye := Object clone
Hawkeye arrows := list("boomerang", "exploding", "net")
Hawkeye random_arrow := method(self arrows at (Random value(self arrows size)))
Hawkeye attack := method("Hawkeye shoots the #{self random_arrow} arrow" interpolate println)

clint := Hawkeye clone
clint arrows = list("hookeye", "grappling hook", "bolo")
clint attack