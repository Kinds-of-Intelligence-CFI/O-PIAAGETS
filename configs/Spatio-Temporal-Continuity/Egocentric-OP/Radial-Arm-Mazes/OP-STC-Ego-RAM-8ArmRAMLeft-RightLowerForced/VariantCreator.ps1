$MasterYAML = Get-ChildItem '.\OP-STC-Ego-RAM-8ArmRAMLeft-RightLowerForced\*.yml'

$copyto = $MasterYAML.FullName -replace "-Grey-","-DarkGreen-"
Copy-Item $MasterYAML.FullName $copyto
$DarkGreenVariant = Get-ChildItem '.\OP-STC-Ego-RAM-8ArmRAMLeft-RightLowerForced\*-DarkGreen-*.yml'
$Content = Get-Content $DarkGreenVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: 1, g: 100, b: 1} #color parameter")
Set-Content -path $copyto -value $Replaced

$copyto = $MasterYAML.FullName -replace "-Grey-","-Beige-"
Copy-Item $MasterYAML.FullName $copyto
$BeigeVariant = Get-ChildItem '.\OP-STC-Ego-RAM-8ArmRAMLeft-RightLowerForced\*-Beige-*.yml'
$Content = Get-Content $BeigeVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: 236, g: 195, b: 153} #color parameter")
Set-Content -path $copyto -value $Replaced

$copyto = $MasterYAML.FullName -replace "-Grey-","-Off-white-"
Copy-Item $MasterYAML.FullName $copyto
$OffwhiteVariant = Get-ChildItem '.\OP-STC-Ego-RAM-8ArmRAMLeft-RightLowerForced\*-Off-white-*.yml'
$Content = Get-Content $OffwhiteVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: 248, g: 253, b: 212} #color parameter")
Set-Content -path $copyto -value $Replaced

$copyto = $MasterYAML.FullName -replace "-Grey-","-DarkBlue-"
Copy-Item $MasterYAML.FullName $copyto
$DarkBlueVariant = Get-ChildItem '.\OP-STC-Ego-RAM-8ArmRAMLeft-RightLowerForced\*-DarkBlue-*.yml'
$Content = Get-Content $DarkBlueVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: 1, g: 1, b: 153} #color parameter")
Set-Content -path $copyto -value $Replaced

$copyto = $MasterYAML.FullName -replace "-Grey-","-Brown-"
Copy-Item $MasterYAML.FullName $copyto
$BrownVariant = Get-ChildItem '.\OP-STC-Ego-RAM-8ArmRAMLeft-RightLowerForced\*-Brown-*.yml'
$Content = Get-Content $BrownVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: 102, g: 51, b: 1} #color parameter")
Set-Content -path $copyto -value $Replaced

$copyto = $MasterYAML.FullName -replace "-Grey-","-Random-"
Copy-Item $MasterYAML.FullName $copyto
$RandomVariant = Get-ChildItem '.\OP-STC-Ego-RAM-8ArmRAMLeft-RightLowerForced\*-Random-*.yml'
$Content = Get-Content $RandomVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: -1, g: -1, b: -1} #color parameter")
Set-Content -path $copyto -value $Replaced
