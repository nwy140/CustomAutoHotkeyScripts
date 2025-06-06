# https://www.reddit.com/r/ffmpeg/comments/13y7dxk/comment/js1w4mf/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button

# Set the path to your FFmpeg executable

$ffmpegPath =  "D:\CableShare\CreativeWare\_WebWare\ffmpeg-7.1-full_build\bin\ffmpeg.exe"

# Set the path to the folder containing your .ts files

$folderPath = "C:\path\to\folder\containing\ts\files"

# Get all .ts files in the folder

$tsFiles = Get-ChildItem -Path $folderPath -Filter *.ts

# Loop through each .ts file and convert it to .mp4

foreach ($file in $tsFiles) {

$inputFilePath = $file.FullName

$outputFilePath = [System.IO.Path]::ChangeExtension($inputFilePath, ".mp4")

# Execute FFmpeg command to convert .ts to .mp4

& $ffmpegPath -i $inputFilePath -c:v copy -c:a copy $outputFilePath

}