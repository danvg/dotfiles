Import-Module posh-git
Import-Module oh-my-posh

$DefaultUser='dava1000'
Set-Theme RobbyRussell
$ThemeSettings.GitSymbols.BranchSymbol=[char]::ConvertFromUtf32(0xE0A0)

$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'
New-Alias -Name vi -Value 'C:\Program Files\Vim\vim82\vim.exe'
New-Alias -Name vim -Value 'C:\Program Files\Vim\vim82\vim.exe'
Set-PSReadlineOption -EditMode vi -BellStyle None

New-Alias -Name make -Value 'C:\msys64\mingw64\bin\mingw32-make.exe'
