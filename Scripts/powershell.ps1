
$scriptName = $MyInvocation.MyCommand.Name
Write-Output "Run script [ $($scriptName) ] from Jenkins Node: $($env:COMPUTERNAME)"