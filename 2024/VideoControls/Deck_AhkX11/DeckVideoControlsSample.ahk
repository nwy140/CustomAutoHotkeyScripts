^j::
WinGet, f_window_id, ID, A
;msgbox %f_window_id%
WinActivate ahk_class Google-chrome
Send {space}
WinActivate ahk_id %f_window_id%

;https://github.com/phil294/AHK_X11/blob/e55558fce5aac5e5be5a141eb21ebdc42c1f5b80/docs/FavoriteFolders.ahk#L127
