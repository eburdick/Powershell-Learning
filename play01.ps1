#
# playing with powershell
#
# get current directory
$dir = Get-ChildItem
#$dir
# display entries in current directory
foreach ($item in $dir)
{
    $item
}