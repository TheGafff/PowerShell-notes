### While Statements

# Basic Syntax
while (condition) {
    {statement list}
}

# Basic example
$a = 1
while ($a -le 5) {
    $a
    $a++
}

# Practical example
$a = 1
while ($a -le 5) {
    $path = "C:\Users\thund\Documents\IT Stuff\PowerShell\FileTesting\while_" + $a + ".log"
    New-Item -Path $path
    $a++
}


while(!(Get-Process -Name notepad -ErrorAction SilentlyContinue).Responding) {
    Write-Host "Notepad is not running"
    Start-Sleep 2
}
"Notepad has been started"