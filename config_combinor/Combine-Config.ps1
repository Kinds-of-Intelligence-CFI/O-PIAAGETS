## Combine-Configs function

# This function takes an input path to a directory containing some configs, a regex for which files to include, a regex for which files to exclude, an output path, and a name for a the combined file.
# It outputs a combined YML config at the path of your choice.
# input and output paths default to the current working directory, and regexes default to all '.yml' or '.yaml' files in the working directory

function Combine-Configs{
    param(
        $inputpath = cd
        $regexinclude = '*.yml|*.yaml'
        $regexexclude = "!"
        $outputpath = cd
        $name
    )
    $AllYAMLs = Get-ChildItem -include $regexinclude -exclude $regexexclude
    Write-Host "Number of files found"
    Write-Host $AllYAMLs.Count 
    Write-Host "Combining files"
    $outputpathname = $outputpath + $name
    foreach ($i in $AllYAMLs){
        $filename = Split-Path $i -Leaf
        $content = Get-Content $i
        $content = $content.Replace("!ArenaConfig", "`# $filename")
        $content = $content.Replace("arenas:", "")
        $content = $content.Replace("0: !Arena", "$index`: !Arena")
        $content = $content.Replace("-1: !Arena", "$index`: !Arena")
        Add-Content -Path 'C:\Users\kvoud\OneDrive - University of Cambridge\Documents\PhD Year 2\Animal-AI OP Battery Building\O-PIAAGETS\OP_configs\V3_Configs\Combined2022-03-15b.yml' -Value $content
    }
}