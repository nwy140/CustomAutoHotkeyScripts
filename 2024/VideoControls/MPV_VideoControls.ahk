; #Requires AutoHotkey v1.1.33+
Media_Play_Pause::ControlSend, ,{space}, ahk_exe mpv.exe, mpv 
Media_Next::ControlSend, ,{right}, ahk_exe mpv.exe, mpv 
Media_Prev::ControlSend, ,{left}, ahk_exe mpv.exe, mpv 

