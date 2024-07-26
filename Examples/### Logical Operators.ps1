### Logical Operators

# -and retursn true if both sides are true
$a=5
$b=10
$c="svr02"
$d="svr01","svr02","svr03"
($a -lt $b) -and ($c -in $d)

# -or returns true if one or both sides are true
$a=50
$b=10
$c="svr02"
$d="svr01","svr02","svr03"
($a -gt $b) -or ($c -in $d)

# -xor returns true if only one side is true
($a -gt $b) -xor ($c -in $d)

# -not negates the statement and can be combined with other statements
-not ($a -lt $b)
-not ($a -gt $b) -and ($c -in $d)

# ! is the same as -not
!($a -lt -$b)