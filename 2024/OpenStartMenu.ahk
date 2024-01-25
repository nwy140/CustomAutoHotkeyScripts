
LWin::
    KeyWait, LWin
;msgbox %A_PriorHotkey% %A_PriorKey% %A_ThisHotkey%
    if (A_PriorKey = A_ThisHotKey)
    {
        Send, {LWin}
    }
return


