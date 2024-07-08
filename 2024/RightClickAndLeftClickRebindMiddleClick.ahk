;https://www.autohotkey.com/boards/viewtopic.php?t=118507

~RButton & LButton::
;#If GetKeyState("RButton", "P")
Send {Esc}
Send {MButton Down};
#If

return

~LButton Up::
Send {MButton Up}