$MasterYAML = Get-ChildItem '.\OP-STC-Ego-RAM-SeqRightForced-1BigBR2SLLTL\*.yml'

$copyto = $MasterYAML.FullName -replace "-Grey-","-DarkGreen-"
Copy-Item $MasterYAML.FullName $copyto
$DarkGreenVariant = Get-ChildItem '.\OP-STC-Ego-RAM-SeqRightForced-1BigBR2SLLTL\*-DarkGreen-*.yml'
$Content = Get-Content $DarkGreenVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: 1, g: 100, b: 1} #color parameter")
Set-Content -path $copyto -value $Replaced

$copyto = $MasterYAML.FullName -replace "-Grey-","-Beige-"
Copy-Item $MasterYAML.FullName $copyto
$BeigeVariant = Get-ChildItem '.\OP-STC-Ego-RAM-SeqRightForced-1BigBR2SLLTL\*-Beige-*.yml'
$Content = Get-Content $BeigeVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: 236, g: 195, b: 153} #color parameter")
Set-Content -path $copyto -value $Replaced

$copyto = $MasterYAML.FullName -replace "-Grey-","-Off-white-"
Copy-Item $MasterYAML.FullName $copyto
$OffwhiteVariant = Get-ChildItem '.\OP-STC-Ego-RAM-SeqRightForced-1BigBR2SLLTL\*-Off-white-*.yml'
$Content = Get-Content $OffwhiteVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: 248, g: 253, b: 212} #color parameter")
Set-Content -path $copyto -value $Replaced

$copyto = $MasterYAML.FullName -replace "-Grey-","-DarkBlue-"
Copy-Item $MasterYAML.FullName $copyto
$DarkBlueVariant = Get-ChildItem '.\OP-STC-Ego-RAM-SeqRightForced-1BigBR2SLLTL\*-DarkBlue-*.yml'
$Content = Get-Content $DarkBlueVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: 1, g: 1, b: 153} #color parameter")
Set-Content -path $copyto -value $Replaced

$copyto = $MasterYAML.FullName -replace "-Grey-","-Brown-"
Copy-Item $MasterYAML.FullName $copyto
$BrownVariant = Get-ChildItem '.\OP-STC-Ego-RAM-SeqRightForced-1BigBR2SLLTL\*-Brown-*.yml'
$Content = Get-Content $BrownVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: 102, g: 51, b: 1} #color parameter")
Set-Content -path $copyto -value $Replaced

$copyto = $MasterYAML.FullName -replace "-Grey-","-Random-"
Copy-Item $MasterYAML.FullName $copyto
$RandomVariant = Get-ChildItem '.\OP-STC-Ego-RAM-SeqRightForced-1BigBR2SLLTL\*-Random-*.yml'
$Content = Get-Content $RandomVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: -1, g: -1, b: -1} #color parameter")
Set-Content -path $copyto -value $Replaced

$ColourVariantList = Get-ChildItem '.\OP-STC-Ego-RAM-SeqRightForced-1BigBR2SLLTL\*.yml'
foreach ($row in $ColourVariantList){
$copyto = $row.FullName -replace "-0-","-180-"
Copy-Item $row.FullName $copyto}

Get-ChildItem '.\OP-STC-Ego-RAM-SeqRightForced-1BigBR2SLLTL\*-180-*.yml' | ForEach {
(Get-Content $_ | ForEach { $_.Replace("rotations: [315] #Agent Rotation Parameter", "rotations: [135] #Agent Rotation Parameter") }) |
Set-Content $_
}
