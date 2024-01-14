Media_Next:: ; change to desired hotkey
	WinGet, ActiveID, ID, A
	WinActivate, ahk_exe msedge.exe ; use the process name of your browser
	Send, {Right}
	WinActivate, ahk_id %ActiveID%
return

Media_Prev:: ; change to desired hotkey
	WinGet, ActiveID, ID, A
	WinActivate, ahk_exe msedge.exe ; use the process name of your browser
	Send, {Left}
	WinActivate, ahk_id %ActiveID% 
return



^+2:: ; change to desired hotkey
	WinGet, ActiveID, ID, A
	WinActivate, ahk_exe msedge.exe ; use the process name of your browser
	Send, {Right}
	WinActivate, ahk_id %ActiveID%
return

^+1:: ; change to desired hotkey
	WinGet, ActiveID, ID, A
	WinActivate, ahk_exe msedge.exe ; use the process name of your browser
	Send, {Left}
	WinActivate, ahk_id %ActiveID% 
return

^+3:: ; change to desired hotkey
	WinGet, ActiveID, ID, A
	WinActivate, ahk_exe msedge.exe ; use the process name of your browser
	Send, {space}
	WinActivate, ahk_id %ActiveID% 
return


