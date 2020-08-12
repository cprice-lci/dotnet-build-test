Write-Host "donet Version:" -NoNewline
dotnet --version
Write-Host $PSVersionTable.OS 

git clone https://github.com/OrchardCMS/OrchardCore
Set-Location OrchardCore
Write-Host "Clean build test"
Measure-Command { dotnet build }

Write-Host "Second build test"
Measure-Command { dotnet build } 

Set-Location ".."

Remove-Item OrchardCore  -Recurse -Force -Confirm:$false