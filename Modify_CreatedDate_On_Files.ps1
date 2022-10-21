cls


$DST = "D:\NewFiles"

$digit = 1

While ($digit -lt 31){

#Write-Output $digit

$digit += 1
$file =  $digit.ToString() +'.txt'
$Creation_date = '01/' + $digit.ToString() + '/2022 21:00' 
$LastAccess_date = '01/' + $digit.ToString() + '/2022 21:45' 
$LastWrite_date = '01/' + $digit.ToString() + '/2022 21:45' 

Get-Item -Path D:\NewFiles\$file | % {$_.CreationTime = $Creation_date} 
Get-Item -Path D:\NewFiles\$file | % {$_.LastAccessTime = $LastAccess_date} 
Get-Item -Path D:\NewFiles\$file | % {$_.LastWriteTime = $LastWrite_date} 

}
