;https://www.autohotkey.com/boards/viewtopic.php?t=118507

RButton::
KeyWait LButton, DT.3
If ErrorLevel {  ; "LButton" was not pressed
 Click R D
 SoundBeep 1500
 KeyWait RButton
 Click R U
 SoundBeep 1000
}

Return

~LButton & RButton::
#If GetKeyState("RButton", "P")
LButton::MButton

#If