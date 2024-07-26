### Archive files by Date
## Same idea can be used to disable user accounts, or create checkpoints for a vm, etc.

$files = Get-ChildItem -path "C:\Users\thund\Documents\IT Stuff\PowerShell\FileTesting" -Recurse

foreach ($file in $files) {
    $dayModified = ($file).LastWriteTime.Day
    $rootPath = "C:\Users\thund\Documents\IT Stuff\PowerShell\FileTesting\"
    $dayDir = $rootPath + $dayModified

    if (-not(Test-Path $dayDir)) {
        New-Item -path $dayDir -ItemType Directory
    }
    
    Move-Item -Path $file.FullName -Destination $dayDir
}