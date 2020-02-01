Import-Module posh-git
Import-Module oh-my-posh

$DefaultUser='dava1000'
Set-Theme RobbyRussell
$ThemeSettings.GitSymbols.BranchSymbol=[char]::ConvertFromUtf32(0xE0A0)

$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'
New-Alias -Name make -Value 'C:\msys64\mingw64\bin\mingw32-make.exe'
New-Alias -Name gnatmake -Value 'C:\GNAT\2019\bin\gnatmake.exe'
New-Alias -Name gnatpp -Value 'C:\GNAT\2019\bin\gnatpp.exe'
New-Alias -Name gprbuild -Value 'C:\GNAT\2019\bin\gprbuild.exe'
New-Alias -Name gprclean -Value 'C:\GNAT\2019\bin\gprclean.exe'
New-Alias -Name vi -Value 'C:\Program Files\Vim\vim82\vim.exe'
New-Alias -Name vim -Value 'C:\Program Files\Vim\vim82\vim.exe'
Set-PSReadlineOption -EditMode vi -BellStyle None
