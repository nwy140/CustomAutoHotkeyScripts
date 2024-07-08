;https://www.autohotkey.com/boards/viewtopic.php?t=118507

;https://www.autohotkey.com/board/topic/118350-how-to-enable-auto-hotkey-in-certain-program-only/

SetTitleMatchMode, 2 ; This let's any window that partially matches the given name get activated
#IfWinActive, Blender

~RButton & LButton::
Send {Esc}
Send {MButton Down};

return

~LButton Up::
if (GetKeyState("MButton", "D"))
{
	Send {MButton Up}
}


return

#If

