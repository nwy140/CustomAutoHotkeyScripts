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

; Note: Keywait is needed for Unreal Engine

Browser_Home::AltLMB_BrowserHome()
Launch_Media::AltLMB_Launch_Media()



;!Browser_Home::!LButton

;Browser_Home::Send {Alt}{LButton Down}
;Browser_Home Up::Send !{LButton Up}


; https://www.autohotkey.com/docs/v2/Hotkeys.htm