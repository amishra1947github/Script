$list = get-content 'D:\A\List.Txt'
$op = foreach($user in $list){ get-aduser -Filter {samaccountname -eq $user} -Properties enabled | ft name, enabled -HideTableHeaders}
$op > 'd:\a\o.txt'
Get-Content 'd:\a\o.txt' | Where { $_ -ne ''} > 'd:\a\samaccountname.txt'




