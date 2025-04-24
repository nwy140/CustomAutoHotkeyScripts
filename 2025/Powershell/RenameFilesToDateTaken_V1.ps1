# Load the necessary System.Drawing assembly https://chatgpt.com/c/6809d7d1-48e8-8009-9521-be133f7c901d https://chatgpt.com/share/6809df4e-ff88-8009-9fd5-64f62d99d8e6
# Found Better script here https://gist.github.com/jongio/a40ea198ca5ebd85d711a7779289cc89
[reflection.assembly]::LoadWithPartialName("System.Drawing")

# Define the extensions to look for
$extensions = "*.jpg", "*.jpeg", "*.png"

# Initialize an empty array to collect all the image files
$files = @()

# Loop through each extension and get matching files
foreach ($extension in $extensions) {
    $files += Get-ChildItem -Path . -Filter $extension -File
}

foreach ($file in $files) {
    # Create a Bitmap object for the image
    $pic = New-Object System.Drawing.Bitmap($file.FullName)
    
    # Get the DateTimeOriginal EXIF tag (0x9003)
    $bitearr = $pic.GetPropertyItem(36867).Value
    $string = [System.Text.Encoding]::ASCII.GetString($bitearr)
    
    # Parse the DateTimeOriginal string
    $dateTaken = [datetime]::ParseExact($string, "yyyy:MM:dd HH:mm:ss`0", $null)
    
    # Close the Bitmap object
    $pic.Dispose()

    # If Date Taken is available
    if ($dateTaken) {
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
    }
