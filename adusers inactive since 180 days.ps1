
$Days = (get-date).adddays(-180)
$days
# Get-ADUser -properties * -f {LastLogonDate -le $days -and name -notlike 'Lco*' -and name -notlike 'dpo*'} | select name, lastlogondate, Enabled | Format-Table > D:\NotLoggedOnSince180Days.csv
Get-ADUser -properties * -f {Enabled -le $days -and name -notlike 'Lco*' -and name -notlike 'dpo*'} | select name, Enabled | Format-Table > D:\disabled.csv