#Requires AutoHotkey v1.1

;https://www.autohotkey.com/docs/v1/KeyList.htm https://www.autohotkey.com/boards/viewtopic.php?t=66394

;LAlt::Send !{LButton}

RShift::Send !{LButton Down}

LAlt::  ; 
    Send, {RAlt down}{LButton down}
    KeyWait, LAlt  ; Wait for RAlt to be released
    Send, {RAlt up}{LButton up}



;Toggle := !Toggle 
;If Toggle
;  Send !{LButton Down}
;else{
  ;Send !{LButton Up}
;}

;return

;RShift::Send '!{LButton Down}'

 


;Browser_Search::Send '!{LButton Down}'

;Browser_Search Up::Send '!{LButton Up}'
