#
# playing with powershell
#
# get current directory contents
$dircontents = Get-ChildItem -Path '.' #note:  -Path '.' is optional because it is the default
#$dircontents
# display entries in current directory
foreach ($item in $dircontents)
{
    $item
}
# display parent directory
$parent = (Get-Item . ).Parent
Write-Output "parent"
$parent.FullName
$parent.GetDirectories()

# display sibling directories
#$sibs = Get-ChildItem $parent
#$sibs