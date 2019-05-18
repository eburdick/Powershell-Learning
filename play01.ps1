#
# playing with powershell
#

#Get current directory. This is a directory object, not a string. To display its full name,
#we just write the name of the directory variable with the FullName field specified
$current_directory = Get-Item -Path . ;
$current_directory.FullName;

Write-output 'Type of $current_directory:'
$current_directory.GetType();

#get current directory contents. This is an array of DirectoryInfo objects
$dircontents = Get-ChildItem $current_directory;

Write-Output '
List of directory contents:
';

foreach ($item IN $dircontents)
{
    $item.FullName
}

#get parent directory
#$parentDir = (get-item $current_directory).parent
$parentDir = $current_directory.parent
Write-Output '
$parentDir Full Name:
'
$parentDir.FullName

Write-Output '
$sibs full names
'
$sibs = Get-ChildItem -Path $parentDir.FullName
foreach ($sib IN $sibs)
{
    $sib.fullname
}
