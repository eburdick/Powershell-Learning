#
# playing with powershell
#
# get current directory
$dir = Get-ChildItem
#$dir
# display entries in current directory
# change to test git
foreach ($item in $dir)
{
    $item
}