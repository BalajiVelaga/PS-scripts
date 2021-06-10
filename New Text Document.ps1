$user = Get-Content c:\temp\us.txt

$r= foreach($u in $user){

Get-ADUser -Identity $u -Properties * | select Name,Title

}

$r | Export-csv c:\temp\output.csv -UseCulture -NoTypeInformation