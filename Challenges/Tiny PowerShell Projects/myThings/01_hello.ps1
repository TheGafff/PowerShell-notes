### 01_hello

Write-Host "Hello, World!"

$world = Read-Host "Hello,?"
switch ($world) {
    ($world) {"Hello, $world"}
    Default {"Hello, World"}
}