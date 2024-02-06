
; Ref: https://www.autohotkey.com/board/topic/121924-best-way-to-determine-how-many-keys-are-held/
; https://www.autohotkey.com/docs/v1/Hotkeys.htm


LWin::RCtrl

#HotIf (A_PriorHotkey ="*LWin"  and A_Priorkey = "LWin") 

    $LWin Up::{
        ; Send "{Blind}{vkE8}"
	SetDefaultMouseSpeed  0
        CoordMode "Mouse", "Screen"
        MouseGetPos &orig_x, &orig_y

	if (orig_x<=-10)             ; Monitor Left
		Click -1920, 1079
	else                         ; Other Monitors
        	Click 0, A_ScreenHeight

        MouseMove orig_x, orig_y
	Send "{Blind}{RCtrl Up}"
    }

#HotIf
return

>^left::#left
>^right::#right
>^up::#up
>^down::#down


>^+left::#left
>^+right::#right
>^+up::#up
>^+down::#down


>^d::#d

>^e::#e
>^q::!f4
>^r::#r
>^+4::#+s
>^+`::>^+Esc


; Remap Windows + Tab to Alt + Tab. Done in Powertoys