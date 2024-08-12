
; Set Num Lock Always On https://www.autohotkey.com/boards/viewtopic.php?t=14539
SetNumLockState, AlwaysOn

; M908_4-3_4-6_ForwardBack
~Launch_Media & Numpad3::SendInput {LButton Up}{XButton2}
~Launch_Media & Numpad1::SendInput {LButton Up}{XButton1}

; Note: Check Numlock Settings