
#
# Is 0 true or false in Io?
#

"Is 0 true or false?" println
"0 is a #{0 type} type\ntrue is a #{true type} type\nfalse is a #{false type} type" interpolate println

"\nSo, 0 ..." println
"\tequals true is #{0 == true}" interpolate println
"\tequals false is #{0 == false}" interpolate println
"\tand true is #{0 and true}" interpolate println
"\tand false is #{0 and false}" interpolate println
"\tor true is #{0 or true}" interpolate println
"\tor false is #{0 or false}" interpolate println

"So \"0\" when evaluated in a boolean context is true because it's a Number object that happens to have the value of 0\nIn Ruby it's the same thing." println

"\ne.g. Object and true = #{Object and true}" interpolate println