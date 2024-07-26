### If Statements

# Basic Syntax
if (condition) {
    {<statement list>}
} elseif (condition) {
    {<statement list>}
} elseif (condition) {
    {<statement list>}
} else {
    {<statement list>}
}

# Basic example
$a = 4
if ($a -gt 5) {
    Write-Host "The value $a is greater than 5"
} elseif ($a -eq 5) {
    Write-Host "The value $a is equal to 5"
} else {
    Write-Host "The value $a is less than 5"
}


$b = 17
if ($b -gt 5) {
    "Greater than five"
} elseif ($b -gt 10) {
    "Greater than ten"
}

# Practical example
$vm = Get-VM -Name "Debian Testing"
if ($vm.State -eq "off") {
    "The VM " + $vm.Name + " is currently off"
    "Starting the vm in 5 seconds, ctrl+C to cancel"
    Start-Sleep -Seconds 5
    Start-VM -Name "Debian Testing"
} elseif ($vm.State -eq "Running") {
    "The vm Debian Testing is already running"
} else {
    "Uh Oh!"
}

# Negating the Conditions
if (-not (Test-Path $newPath)) {
    New-Item -Path $newPath -ItemType Directory
    Move-Item -Path $file.FullName -Destination $newPath
} else {
    Move-Item -Path $file.FullName -Destination $newPath
}

