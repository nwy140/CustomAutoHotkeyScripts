#Requires AutoHotkey v1.1

SetTitleMatchMode, 2 ; This let's any window that partially matches the given name get activated

; Reverses the scroll direction
#IfWinNotActive, Blender
WheelUp::WheelDown
WheelDown::WheelUp



