
# ================================
# Everything is an object in IO
# Wether something will interact with another object via it's "behaviors"
# depends on the object itself.

sum := 1 + 1  # works because both numbers are Number objects and the '+' method supports it

"#{sum} is a #{sum type} object" interpolate println

