### Assignment Operators

# Assign a value
$a = 10
$a = "PowerShell"
$a = "svr01", "svr02", "svr03"
$a = @{svr01='10.10.0.201';svr02='10.10.0.202'}

# Assignment by addition
$a=10
$a+=5

$a =  "svr01"
$a += ".whattheheckman"

$a = "svr01", "svr02","svr03"
$a += "svr04"

$a = @{svr01='10.10.0.201';svr02='10.10.0.202'}
$a+=@{svr03='10.10.0.203'}

#Assignment by subtraction
$a=10
$a-=5

$a = 10,20,20
$a[1] -= 5

# Assignment by multiplication
$a =10
$a*=7

$a="PowerShell"
$a*=6

$a=10,5,74
$a[1] *=8

#Assignment by division
$a=10
$a/=2

$a =10,25,78
$a[2]/=4

#Assignemnt by modulo
$a=10
$a%=4

#Increment and decrement operators
$a=5
++$a
--$a

$b = ++$a
$b = $a++
$b