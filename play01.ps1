#
# playing with powershell
#

#Get current directory. This is a directory object, not a string. To display its full name,
#we just write the name of the directory variable with the FullName field specified
$current_directory = Get-Item . ;
$current_directory.FullName;
$current_directory.GetType();

# get current directory contents.  This is a list of its contents
$dircontents = Get-ChildItem $current_directory; #note:  -Path '.' is optional because it is the default
#$dircontents
# display entries in current directory
foreach ($item in $dircontents)
{
    $item.Name;
}
# display parent directory
$parent = (Get-Item . ).Parent;
Write-output "";
Write-Output parent;
$parent.FullName;

Write-Output "";
$parent.GetDirectories();

# display sibling directories
#$sibs = Get-ChildItem $parent
#$sibs