
AltLMB_BrowserHome()
{
    send {blind}{Alt down}
    send {blind}{LButton down}
    keywait  Browser_Home
    send {blind}{LButton up}
    send {blind}{Alt up}
    return
}

AltLMB_Launch_Media()
{
    send {blind}{Alt down}
    send {blind}{LButton down}
    keywait  Launch_Media
    send {blind}{LButton up}
    send {blind}{Alt up}
    return
}



Browser_Home::AltLMB_BrowserHome()

Launch_Media::AltLMB_Launch_Media()

#IF GetKeyState("Launch_Media","Numpad3") Or GetKeyState("Launch_Media","Numpad1")
; https://www.autohotkey.com/boards/viewtopic.php?style=2&t=98547 
; M908_4-3_4-6_ForwardBack
~Numpad1::SendInput, {LButton Up}{XButton1}
~Numpad3::SendInput, {LButton Up}{XButton2}

#IF


;!Browser_Home::!LButton

;Browser_Home::Send {Alt}{LButton Down}
;Browser_Home Up::Send !{LButton Up}


; https://www.autohotkey.com/docs/v2/Hotkeys.htm