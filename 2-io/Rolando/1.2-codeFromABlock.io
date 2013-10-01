Hawkeye := Object clone
Hawkeye arrows := list("boomerang", "exploding", "net", "grappling hook", "bolo")
Hawkeye attack := method(v, "Hawkeye shoots the #{v} arrow" interpolate println)

clint := Hawkeye clone
clint attack(clint arrows at (Random value(clint arrows size) floor))