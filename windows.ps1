# Script to search for files in a specified directory with a specified file type
$dir = (Read-Host -Prompt "Enter Directory for Folder").Trim()
$type = (Read-Host -Prompt "Enter File Type").Trim()

# Ensure directory path ends with a backslash if it’s not root
if ($dir[-1] -ne "\") {
    $dir += "\"
}

# Get files with the specified type in the specified directory
Get-ChildItem -Path "$dir" -Filter "*$type" | Select-Object Name, Directory | Format-Table -AutoSize

