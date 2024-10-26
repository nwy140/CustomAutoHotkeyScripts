; #Requires AutoHotkey v1.1.33+
Media_Prev::ControlSend, ,{left}, ahk_exe mpv.exe, mpv 
Media_Next::ControlSend, ,{right}, ahk_exe mpv.exe, mpv 
Media_Play_Pause::ControlSend, ,{space}, ahk_exe mpv.exe, mpv 

F23 & `::ControlSend, ,{left}, ahk_exe mpv.exe, mpv 
F23 & 1::ControlSend, ,{right}, ahk_exe mpv.exe, mpv 
F23 & 2::ControlSend, ,{space}, ahk_exe mpv.exe, mpv 







