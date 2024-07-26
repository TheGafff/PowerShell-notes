foreach ($file in Get-ChildItem) {
    Copy-Item $file .\Logs
}