// Q: What is the difference between = (equals), 
//    := (colon equals), and ::= (colon colon equals)?
//    When would you use each one?

// A: According to the Io website,
//    http://iolanguage.org/scm/io/docs/IoGuide.html#Syntax-Assignment
//
//    operator     action
//    ::=          Creates slot, creates setter, assigns value
//    :=           Creates slot, assigns value
//    =            Assigns value to slot if it exists, otherwise raises exception