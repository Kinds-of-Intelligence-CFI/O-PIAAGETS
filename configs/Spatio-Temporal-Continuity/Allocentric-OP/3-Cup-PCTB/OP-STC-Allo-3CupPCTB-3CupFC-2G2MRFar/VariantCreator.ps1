$MasterYAML = Get-ChildItem '.\OP-STC-Allo1-3CupPCTB-3CupFC-2goalMRfar\*.yml'

$copyto = $MasterYAML.FullName -replace "-Grey-","-DarkGreen-"
Copy-Item $MasterYAML.FullName $copyto
$DarkGreenVariant = Get-ChildItem '.\OP-STC-Allo1-3CupPCTB-3CupFC-2goalMRfar\*-DarkGreen-*.yml'
$Content = Get-Content $DarkGreenVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: 1, g: 100, b: 1} #color parameter")
Set-Content -path $copyto -value $Replaced

$copyto = $MasterYAML.FullName -replace "-Grey-","-Beige-"
Copy-Item $MasterYAML.FullName $copyto
$BeigeVariant = Get-ChildItem '.\OP-STC-Allo1-3CupPCTB-3CupFC-2goalMRfar\*-Beige-*.yml'
$Content = Get-Content $BeigeVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: 236, g: 195, b: 153} #color parameter")
Set-Content -path $copyto -value $Replaced

$copyto = $MasterYAML.FullName -replace "-Grey-","-Off-white-"
Copy-Item $MasterYAML.FullName $copyto
$OffwhiteVariant = Get-ChildItem '.\OP-STC-Allo1-3CupPCTB-3CupFC-2goalMRfar\*-Off-white-*.yml'
$Content = Get-Content $OffwhiteVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: 248, g: 253, b: 212} #color parameter")
Set-Content -path $copyto -value $Replaced

$copyto = $MasterYAML.FullName -replace "-Grey-","-DarkBlue-"
Copy-Item $MasterYAML.FullName $copyto
$DarkBlueVariant = Get-ChildItem '.\OP-STC-Allo1-3CupPCTB-3CupFC-2goalMRfar\*-DarkBlue-*.yml'
$Content = Get-Content $DarkBlueVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: 1, g: 1, b: 153} #color parameter")
Set-Content -path $copyto -value $Replaced

$copyto = $MasterYAML.FullName -replace "-Grey-","-Brown-"
Copy-Item $MasterYAML.FullName $copyto
$BrownVariant = Get-ChildItem '.\OP-STC-Allo1-3CupPCTB-3CupFC-2goalMRfar\*-Brown-*.yml'
$Content = Get-Content $BrownVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: 102, g: 51, b: 1} #color parameter")
Set-Content -path $copyto -value $Replaced

$copyto = $MasterYAML.FullName -replace "-Grey-","-Random-"
Copy-Item $MasterYAML.FullName $copyto
$RandomVariant = Get-ChildItem '.\OP-STC-Allo1-3CupPCTB-3CupFC-2goalMRfar\*-Random-*.yml'
$Content = Get-Content $RandomVariant
$Replaced = $Content.Replace("- !RGB {r: 153, g: 153, b: 153} #color parameter", "- !RGB {r: -1, g: -1, b: -1} #color parameter")
Set-Content -path $copyto -value $Replaced

$ColourVariantList = Get-ChildItem '.\OP-STC-Allo1-3CupPCTB-3CupFC-2goalMRfar\*.yml'
foreach ($row in $ColourVariantList){
$copyto = $row.FullName -replace "Opaque","OpLava"
Copy-Item $row.FullName $copyto}

Get-ChildItem '.\OP-STC-Allo1-3CupPCTB-3CupFC-2goalMRfar\*OpLava*.yml' | ForEach {
(Get-Content $_ | ForEach {
$_.Replace("- !Vector3 {x: 12, y: 2.1, z: 4}", "- !Vector3 {x: 6, y: 2.1, z: 4}") }) |
Set-Content $_
}

Add-Content -Path '.\OP-STC-Allo1-3CupPCTB-3CupFC-2goalMRfar\*OpLava*.yml' -Value "    - !Item
      name: DeathZone
      positions:
      - !Vector3 {x: 1.8, y: 0, z: 28}
      - !Vector3 {x: 11.4, y: 0, z: 28}
      - !Vector3 {x: 15.2, y: 0, z: 28}
      - !Vector3 {x: 24.8, y: 0, z: 28}
      - !Vector3 {x: 28.5, y: 0, z: 28}
      - !Vector3 {x: 38.1, y: 0, z: 28}
      sizes:
      - !Vector3 {x: 3.6, y: 1, z: 3}
      - !Vector3 {x: 3.6, y: 1, z: 3}
      - !Vector3 {x: 3.6, y: 1, z: 3}
      - !Vector3 {x: 3.6, y: 1, z: 3}
      - !Vector3 {x: 3.6, y: 1, z: 3}
      - !Vector3 {x: 3.6, y: 1, z: 3}
      rotations: [0, 0, 0, 0, 0, 0]"
