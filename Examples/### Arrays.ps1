### Arrays
# Assign multiple values to a variable
$a=2,42,5,7,13

# Can assign with a range operator
$a=1..10

# By default, array data type is object
$a.GetType()

# Because of this, you can store multiple data types in an array
$a = 24,'Simon Sunshine'

#Create an array using the sub-expression operator
$a = @()
$a.GetType()
$a.Count

$p = @(Get-Process)
$p.Count

#Access array elements using zero index
$a[0]

# Access array elements using the range operator
$a[4..7]

# Negative numbers can also access the elements in an array
$a[-1]

# range operator with negative bb
$a[-7..-3]

# Change the value of an array element
$a[3]=99

$a.SetValue(10,3)

# Add an element
$a+=99

# Get the length of an array
$a.Length
$a.Count

# Use an array to start a process
$pro = Get-Process
$pro
$pro[21] | Start-Process