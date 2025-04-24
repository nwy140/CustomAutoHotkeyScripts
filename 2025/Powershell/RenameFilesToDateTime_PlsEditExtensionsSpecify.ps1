# Define the extensions to look for
$extensions = "*.jpg", "*.jpeg", "*.png"

# Get all the image files in the current folder
foreach ($extension in $extensions) {
    $files += Get-ChildItem -Path . -Filter $extension -File
}
foreach ($file in $files) {
    # Get the Date Taken from file properties (CreationTime)
    $dateTaken = (Get-ItemProperty -Path $file.FullName).CreationTime

    # If Date Taken is available
        # Format the Date Taken to a string in the format YYYY-MM-DD_HH-MM-SS
        $formattedDate = $dateTaken.ToString("yyyy-MM-dd_HH-mm-ss")
        $newName = "$formattedDate$($file.Extension)"

        # Ensure no overwriting happens by checking if a file with the same name already exists
        $counter = 1
        while (Test-Path $newName) {
            $newName = "$formattedDate" + "_$counter" + $file.Extension
            $counter++
        }

        # Rename the file
        Rename-Item -Path $file.FullName -NewName $newName
        Write-Host "Renamed: $($file.Name) -> $newName"
    } 


# Prompt to exit
Read-Host -Prompt "Done Renaming Files to DateTime. Press Enter to exit"
