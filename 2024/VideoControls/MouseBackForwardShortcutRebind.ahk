#Requires AutoHotkey v1.1.33+

#SingleInstance Force

Process, Close, EdgeVideoControls.exe

^XButton1::Media_Prev
^XButton2::Media_Next
XButton1 & XButton2::Media_Play_Pause