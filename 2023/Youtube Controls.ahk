Media_Next:: ; change to desired hotkey
	WinGet, ActiveID, ID, A
	WinActivate, ahk_exe chrome.exe ; use the process name of your browser
	Send, {Right}
	WinActivate, ahk_id %ActiveID%
return

Media_Prev:: ; change to desired hotkey
	WinGet, ActiveID, ID, A
	WinActivate, ahk_exe chrome.exe ; use the process name of your browser
	Send, {Left}
	WinActivate, ahk_id %ActiveID% 
return
