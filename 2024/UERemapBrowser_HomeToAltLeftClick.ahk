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
    If WinActive("ahk_exe blender.exe"){
        send {blind}{Alt down}
        send {blind}{PAUSE down}
        keywait  Launch_Media
        send {blind}{PAUSE up}
        send {blind}{Alt up}
    }
    else{
        send {blind}{Alt down}
        send {blind}{LButton down}
        keywait  Launch_Media
        send {blind}{LButton up}
        send {blind}{Alt up}
    }
    return
}

; Note: Keywait is needed for Unreal Engine

Browser_Home::AltLMB_BrowserHome()

; https://www.reddit.com/r/AutoHotkey/comments/169lx5r/comment/jz2zxrt/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
Launch_Media::AltLMB_Launch_Media()



;!Browser_Home::!LButton

;Browser_Home::Send {Alt}{LButton Down}
;Browser_Home Up::Send !{LButton Up}


; https://www.autohotkey.com/docs/v2/Hotkeys.htm