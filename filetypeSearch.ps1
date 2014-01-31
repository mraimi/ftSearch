$ErrorActionPreference = "SilentlyContinue"
clear
echo "Path to Search? `r`n"
$pathToSearch = Read-Host 'i.e. C:\Users\xxx1234\Desktop'
echo ''

$valid = Test-Path $pathToSearch
while($valid -eq $false){
	echo "Path not valid. Please try again `r`n"
	$pathToSearch = Read-Host 'i.e. C:\Users\xxx1234\Desktop'
	$valid = Test-Path $pathToSearch
	echo "`r`n"
}
echo "File type(s)? `r`n"

$fileType = "*.mp3"
$extArray = @()
while($fileType -notmatch "break"){
	
	$fileType = Read-Host 'i.e *.mp3'
	if($fileType -notmatch "break"){
		$extArray += $fileType
	}
}


#$fileType = Read-Host 'i.e.*.mp3'
echo ''
echo "Enter full path where you want results to output`r`n"
$nameOfOutput = Read-Host 'i.e. C:\Users\xxx1234\Desktop\'
$valid = Test-Path $nameOfOutput

while($valid -eq $false){
	echo "Path not valid. Please try again `r`n"
	$nameOfOutput = Read-Host 'i.e. C:\Users\xxx1234\Desktop\'
	$valid = Test-Path $pathToSearch
	echo "`r`n"
}


$addSlash = $nameOfOutput.EndsWith("\")

if($addSlash -eq $true){
	$nameOfOutput = $nameOfOutput + "output.csv"
} else {
	$nameOfOutput = $nameOfOutput + "\output.csv"
}

echo "`r`nWorking..."
Get-ChildItem -Path $pathToSearch -Include $extArray -Recurse | Export-Csv $nameOfOutput
echo ''
Write-Host "DONE. File is located at $nameOfOutput`r`n"   