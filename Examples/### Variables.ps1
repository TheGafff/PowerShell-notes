# Assign value to $a and check type
$a = 12
$a.GetType()

# Assign value to $b and check type
$b = "15"
$b.GetType()

#Add variable of different types
$c = $a + $b
$c
$c.GetType()
$b.GetType()

# Reverses order of variables when added
# PowerShell will take the type of the first variable
$d = $b + $a
$d
$d.GetType()

# Strings
# Expandable Strings " "
"The value of $a is $a"

# Literalstrings ' '
'The value of $a is $a'

# Escape character `
"The value of `$a is $a"