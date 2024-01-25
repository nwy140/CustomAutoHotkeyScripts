
; Ref: https://www.autohotkey.com/board/topic/121924-best-way-to-determine-how-many-keys-are-held/
; https://www.autohotkey.com/docs/v1/Hotkeys.htm


LWin::RCtrl

#HotIf (A_PriorHotkey ="*LWin"  and A_Priorkey = "LWin") 

    $LWin Up::{
        ; Send "{Blind}{vkE8}"
        CoordMode "Mouse", "Screen"
        MouseGetPos &orig_x, &orig_y
        Click 0, A_ScreenHeight
        MouseMove orig_x, orig_y
	Send "{Blind}{RCtrl Up}"
    }

#HotIf
return