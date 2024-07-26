### Prompt for Input

# Read-Host
$game = Read-Host "Would you like to play a game?"

if ($game -eq "yes") {
    Write-Host "How about a game of chess?"
} elseif ($game -eq "no") {
    Write-Host "Ok, maybe later"
} else {
    Write-Host "Invalid choice"
}

switch ($game) {
    ("yes") {Write-Host "How about a game of chess?"}
    ("no") {Write-Host "Ok, maybe later"}
    Default {"Invalid Choice"}
}


## Prompt for choice
$Host.UI | Get-Member -Name promptforchoice | Format-List



$caption = "You must decide"
$message = "Do you want to know what it is?"
$red = New-Object System.Management.Automation.Host.ChoiceDescription "&Red Pill","Stay in wonderland"
$blue = New-Object System.Management.Automation.Host.ChoiceDescription "&Blue Pill","The story ends"
$cancel = New-Object System.Management.Automation.Host.ChoiceDescription "&Cancel","Tough Decision"
$options = [System.Management.Automation.Host.ChoiceDescription[]]($red,$blue,$cancel)
$results = $host.UI.PromptForChoice($caption,$message,$options,0)

switch ($results) {
    0 {clear-host;"You chose to see how deep the rabbit hole goes"}
    1 {clear-host;"You chose to wake up in bed"}
    2 {clear-host;"You failed to make a choice"}
}