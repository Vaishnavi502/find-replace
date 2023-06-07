$application = New-Object -comobject word.application
$application.visible=$false
$words = Get-Content C:\Users\DELL\Desktop\find.txt
$file = Read-Host 'Enter File Path'
$document = $application.documents.open($file)
$selection = $application.Selection
$matchCase=$false
$matchWholeWord=$true
$matchWildCards=$false
$matchSoundsLike=$false
$matchAllWordForms=$false
$forward=$true
$wrap=1
$format=$true
$replace=2
Foreach($word in $words)
{
	$pos = $word.indexOf(":")
	$findtext=$word.Substring(0,$pos)
	$replacewith=$word.Substring($pos+1)
	$exeRTN = $selection.find.execute($findtext,$matchCase,$matchWholeWord,$matchWildCards, $matchSoundsLike, $matchAllWordForms, $forward, $wrap, $format, $replacewith, $replace)
}
$document.save()
$document.close()
$application.quit()
$application=$null
