### Comparison Operators - Containment

# Containment operators -contains -notcontains
"svr01","svr02","svr03" -contains "svr01"
"svr01","svr02","svr03" -ccontains "Svr01"

"svr01","svr02","svr03" -notcontains "svr01"
"svr01","svr02","svr03" -notcontains "svr04"

# Containment operators -in -notin
"Svr02" -in "svr01","svr02","svr03"

"Svr02" -notin "svr01","svr02","svr03"
"Svr04" -notin "svr01","svr02","svr03"