$usernames = Get-ADUser -Filter * -SearchBase "OU=Users,DC=test,DC=local" | select -ExpandProperty SamAccountName

foreach ($username in $usernames) {

    set-aduser $username -replace @{msnpallowdialin=$true}
    Write-Output $username
}
