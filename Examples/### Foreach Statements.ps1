### Foreach Statements

# Basic Syntax
foreach ($item in $collection){
    <statement list>
}

# Basic example
$svrList = "svr01","svr02","svr03","svr04","svr05"

foreach ($svr in $svrList) {
    Write-Host $svr
}

# Practical examples
$vmlist = Get-VM
foreach ($vm in $vmlist){
    $vm.Name + " is " + $vm.State
}


$currTime = Get-Date
foreach ($vm in $vmlist) {
    Checkpoint-VM -Name $vm.VMName -CheckpointName "Foreach loop -($currTime)"
}


foreach ($file in Get-ChildItem){
    if ($file.LastWriteTime -lt [datetime]"7/20/2024"){
        Write-Host $file.Name - $file.LastWriteTime
    }
}