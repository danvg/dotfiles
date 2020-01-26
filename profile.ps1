Import-Module posh-git
Import-Module oh-my-posh

$DefaultUser='dava1000'
Set-Theme RobbyRussell
$ThemeSettings.GitSymbols.BranchSymbol=[char]::ConvertFromUtf32(0xE0A0)
$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'
