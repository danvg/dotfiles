Import-Module posh-git
Import-Module oh-my-posh

$DefaultUser='danle'
Set-Theme Paradox
$ThemeSettings.GitSymbols.BranchSymbol=[char]::ConvertFromUtf32(0xE0A0)

$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'
New-Alias -Name vi -Value 'C:\Users\danle\scoop\apps\neovim\current\bin\nvim.exe'
New-Alias -Name vim -Value 'C:\Users\danle\scoop\apps\neovim\current\bin\nvim.exe'
Set-PSReadlineOption -EditMode vi -BellStyle None
New-Alias -Name make -Value 'C:\Users\danle\scoop\apps\msys2\current\mingw64\bin\mingw32-make.exe'
