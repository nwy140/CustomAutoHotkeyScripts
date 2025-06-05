@echo off
setlocal enabledelayedexpansion

for %%f in (*.mp4) do (
    echo Stripping metadata from: %%f

    REM Create temp file
    "D:\CableShare\CreativeWare\_WebWare\ffmpeg-7.1-full_build\bin\ffmpeg.exe" -i "%%f" -map 0 -c copy -map_metadata -1 "temp_%%~nxf"

    REM Replace original file
    move /Y "temp_%%~nxf" "%%f"
)

echo Done. All files overwritten.
pause
