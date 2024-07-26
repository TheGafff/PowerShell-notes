### Matching Comparison Operators

# Matching operators -like -notlike using wildcards *, ?, [a-z]
"PowerShell" -like "Power[g-t]hell"
"PowerShell" -notlike "Power*"

"PowerShell" -like "PowerSh[a,e,i,o,u]ll"

"PowerShell", "PowerPoint" -like "power*"
"PowerShell", "PowerPoint" -notlike "*shell"

# Matching operators -match -notmatch using regular expressions
"PowerShell" -notmatch "power"
"PowerShell" -match "^Powe\w+"
"PowerShell","PowerPoint" -match "^Powe\w+"