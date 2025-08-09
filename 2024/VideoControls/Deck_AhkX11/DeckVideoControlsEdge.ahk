Media_Prev::
WinGet, f_window_id, ID, A
;msgbox %f_window_id%
WinActivate ahk_class Microsoft-edge
Send {left}
WinActivate ahk_id %f_window_id%
return

Media_Next::
WinGet, f_window_id, ID, A
;msgbox %f_window_id%
WinActivate ahk_class Microsoft-edge
Send {right}
WinActivate ahk_id %f_window_id%
return






;https://github.com/phil294/AHK_X11/blob/e55558fce5aac5e5be5a141eb21ebdc42c1f5b80/docs/FavoriteFolders.ahk#L127
;WinActivate ahk_class Google-chrome
