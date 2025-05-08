REM https://chatgpt.com/share/681ca833-1158-8009-a747-ed30a09eafc6

@echo off
for %%F in (*.mp4) do (
    set "name=%%~nF"
    call :process "%%F" "%%~nF.srt"
)
goto :eof

:process
if exist %2 (
    echo Burning subtitles into %1...
    "D:\CableShare\CreativeWare\_WebWare\ffmpeg-7.1-full_build\bin\ffmpeg.exe" -i %1 -vf subtitles=%2 -c:a copy "%~n1_burned.mp4"
) else (
    echo No subtitle found for %1
)
