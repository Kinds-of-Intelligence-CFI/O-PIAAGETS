$MasterYAML = Get-ChildItem '.\OP-STC-Ego-Detour-Xshape-RightAngleXLeft\*.yml'

foreach ($row in $MasterYAML){
$copyto = $row.FullName -replace "-0-","-180-"
Copy-Item $row.FullName $copyto}

Get-ChildItem '.\OP-STC-Ego-Detour-Xshape-RightAngleXLeft\*-180-*.yml' | ForEach {
(Get-Content $_ | ForEach { $_.Replace("rotations: [0] #Agent Rotation Parameter", "rotations: [180] #Agent Rotation Parameter") }) |
Set-Content $_
}
