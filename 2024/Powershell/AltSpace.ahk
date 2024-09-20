#Requires AutoHotkey v1.1.33+
#SingleInstance Force

SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;run PowerShell.exe  -ExecutionPolicy Bypass -File "AltSpace.ps1"

~PgUp & PgDn::ALTSPACEFN()

#`::ALTSPACEFN()


ALTSPACEFN(){
run cmd /c start /min "" powershell -WindowStyle Hidden -ExecutionPolicy Bypass -File "AltSpace.ps1"
}


;https://www.reddit.com/r/PowerShell/comments/4gt73m/run_powershell_script_without_a_console_window/



