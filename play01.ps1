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
echo "parent"
$parent

# display sibling directories
$sibs = Get-ChildItem $parent
$sibs