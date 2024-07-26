### Do Statements

# Basic Syntax - do-while
do {
    {statement list}
} while (condition)

# Basic example
do {
    [int]$a = Read-Host "Pick a number between 1 and 5"
} while (($a -lt 1) -or ($a -gt 5))

# Practical example
$a = 1
do {
    $path = "C:\Users\thund\Documents\IT Stuff\PowerShell\FileTesting\do-while_" + $a + ".log"
    New-Item -Path $path
    $a++
} while ($a -le 5)

# basic syntax - do-until
do {
    (statement list)
} until (condition)

# Basic example
do {
    [int]$a = Read-Host "Pick a number between 1 and 5"
} until (($a -ge 1) -and ($a -le 5))


# Practical example
$a = 7
do {
    $path = "C:\Users\thund\Documents\IT Stuff\PowerShell\FileTesting\do-while_" + $a + ".log"
    if (Test-Path $path) {
        Remove-Item -Path $path
    }    
    $a--
} until ($a -eq 0)