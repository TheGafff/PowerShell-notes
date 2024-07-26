### Equality Comparison Operators

# Equality operators -eq and -ne single value
10 -eq 5
"PowerShell" -ieq "powerShell"

#Equality operators -eq and -ne with collections
"svr01","svr02","svr02","svr03" -eq "svr02"

# Checking for null
$vms = $null
$vms -eq $null

$vms = "svr01", $null, "svr02", $null, "svr03"
$vms -eq $null
$null -ne $vms

# -gt -lt -ge -le
$a = 5
$a -le 5
$a = 1..10
$a -le 8

"2020-7-4" -lt "2022-6-25"
"07/24/1993" -gt "03/27/1943"