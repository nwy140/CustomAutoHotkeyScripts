; https://gist.github.com/Konfekt/077ed3d9c2dc2e40dbb9c4d06353edaa
; Swap Alt+Tab and Win+Tab

; From https://www.autohotkey.com/boards/viewtopic.php?style=19&p=548067&sid=dfc532a1b55a0d25862c8ee98674e0db#p548067
#HotIf WinActive("ahk_class XamlExplorerHostIslandWindow")
*!Tab::Send("{Alt Down}{Right}")
~*Alt Up::Send("{Enter}")
#HotIf 
*!Tab::#Tab

; From https://www.autohotkey.com/docs/v2/Hotkeys.htm#AltTabWindow
LWin & Tab::AltTab
; LWin & Shift & Tab::ShiftAltTab
