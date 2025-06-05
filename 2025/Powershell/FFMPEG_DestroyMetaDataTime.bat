REM https://chatgpt.com/share/6841081b-16fc-8009-9823-0f31475301c7

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
