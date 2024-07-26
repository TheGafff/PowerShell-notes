### For Statements

# Basic Syntax
for (<init>;<condition>;<repeat>) {
    <statement list>
}

# Basic examples
for ($i =1; $i -le 5 ; $i++) {
    Write-Host "$i"
}


$array = (1..10)
for ($i = 0; $i -lt $array.Length; $i++){
    Write-Host "Array index" $i "has a value of" $array[$i]
}

# Infinite loops BE CAREFUL
for ($i = 1;;)
{
    Write-Host $i
}

for($i =1;;$i++){
    $i
}


# Practical Example
$files = Get-ChildItem -File -Path .\FileTesting| Sort-Object -Descending -Property Length
for ($i = 0; $i -lt 10; $i++) {
    $files[$i].Name + " is " + $files[$i].Length + " bytes"
}