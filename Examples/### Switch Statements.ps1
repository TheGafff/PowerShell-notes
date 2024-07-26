### Switch Statements

# Basic Syntax
switch (test-expression) {
    result-to-be-mathced {<statement>}
    result2-to-be-mathced {<statement>}
    result3-to-be-mathced {<statement>}
    default {statement}
}

# Basic Example
$a = 80
switch ($a)
{
    1{"It is one";break}
    2{"It is two";break}
    3{"It is three";break}
    4{"It is four";break}
    3{"It is three again";break}
    default {"No Match"}
}

# Practical Example
$vm = Get-VM -Name "Debian Testing"

switch ($vm.State) {
    ("off") {$vm.Name + " is off"
            "Starting Debian Testing in 5 seconds, Ctrl + C to cancel"
            Start-Sleep -Seconds 5
            Start-VM -Name "Debian Testing"}
    ("running") {$vm.Name + " is running"}
    default {"Uh oh!"}
}