### Arithmetic Operators

# Add two numbers
4 + 3

# Add two strings
"Mike" + " " + "Rodrick"

#Remember PowerShell will convert data types if possible
4 + "3"
"3" + 4

# Add Arrays
$a = 1,2,3
$b = 4,5,6
$c = $a + $b
$c
$c.GetType()

# Add hash table
$ip1 = @{'svr01' = '10.10.0.101';'svr02' = '10.10.0.102'}
$ip2 = @{'svr03' = '10.10.0.103';'svr04'='10.10.0.104'}
$ipList = $ip1 + $ip2
$ipList

# Subtract one number from another 
4-3

# Make a negative number
4+-6

# Cannot subtract strings
"simon" - 3

# Multiply Numbers
4*3

#Copy strings and hash tables
"PowerShell " *3
$a = 1,2,3
$b = $a *3
$b

# Divide Numbers
15/3
$a = 15/3
$a.GetType()

# Round integers to the nearest even number
[int](5/2)
[int](7/2)

# Calculate Modulus
14%7
17%5

#Operator Precedence
4+8/2*4
4+8/(2*4)
(4+8)/2*4