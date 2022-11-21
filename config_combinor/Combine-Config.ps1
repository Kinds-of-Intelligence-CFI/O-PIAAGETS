# Combine-Configs function

# Written with Powershell version 5.1.22621.608

# This function takes, a regex for which files to include, and a combined name and path for a the combined file.
# It outputs a combined YML config at the path of your choice.
# regexes default to all '.yml' or '.yaml' files in the working directory. An error appears if you don't include the .yml or .yaml extension in the file path

function Combine-Configs{
    param(
        $regex = '*.yml|*.yaml',
        $name
    )

    if (!$name.Contains(".yml") -and !$name.Contains(".yaml")){
        Write-Host "Name must contain the file extension .yml or .yaml"
    } else {
        $AllYMLs = Get-ChildItem $regex -recurse #get all the YMLs you want
        $NumYMLs = $AllYMLs.Count #count them and save the number for later
        Write-Host "Number of files found"
        Write-Host $NumYMLs
        Write-Host "Combining files to"
        Write-Host $name

	    New-Item $name -Force #make the new file
        $firstfilename = Split-Path $AllYMLs[0] -Leaf #get yml file config name to put in combined config as comment
        $firstfilecontent = Get-Content $AllYMLs[0] #get the content of the file
        $firstfilecontent = $firstfilecontent.Replace("!ArenaConfig", "!ArenaConfig # $firstfilename") #add in the comment at the top so we know which config the below refers to
        $firstfilecontent = $firstfilecontent.Replace("-1: !Arena", "0: !Arena")
        Set-Content -path $name -value $firstfilecontent #set the content to the new file

        foreach ($i in $AllYMLs[1..$NumYMLs]){ #for the rest of the configs
            $index = $AllYMLs.IndexOf($i)
            $filename = Split-Path $i -Leaf #get the yml config name to put at top of config so we can keep track when reading config
            $content = Get-Content $i #get the content of the config
            $content = $content.Replace("!ArenaConfig", "`# $filename") #replace the `!ArenaConfig` call with just the commented file name, as we only need it once at the top of the doc
            $content = $content.Replace("arenas:", "") #replace the `arenas` item call, as we only need it once at top of config.
            $content = $content.Replace("-1: !Arena", "$index`: !Arena")
            Add-Content -Path $name -Value $content
        }
        Write-Host "Success."
    }

    
}

