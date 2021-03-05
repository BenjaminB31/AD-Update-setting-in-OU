$computers = Get-ADComputer -Filter * -SearchBase "OU=Computers,DC=test,DC=local" | select -ExpandProperty SamAccountName


foreach ($computer in $computers) {

    Set-ADComputer $computer -replace @{msnpallowdialin=$true}
    Write-Output $computer
}
