### Type and Comparison Operators

# Type comparison
$a = $null
$a = 10
$b = "10"
$a -is [int]
$b -is [int]
$b -isnot [int]
$a -is $b.GetType()

# Replacement Operators
Get-ChildItem -Path .\FileTesting *.txt | Rename-Item -NewName {$_.Name -replace '\.txt$','.log'}

# Creating new items
New-Item -Path ".\" -Name "FileTesting" -ItemType Directory
New-Item -Path .\FileTesting -Name "Test3.txt" -Item File