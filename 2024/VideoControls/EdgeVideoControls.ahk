﻿;Source: https://forum.obsidian.md/t/autohotkey-script-for-controlling-youtube-media-without-losing-focus-on-blender/55435

; In case you have another browser, replace where it says "msedge" 
; by the name of your browser with: "msedge"; "opera", "vivaldi", "firefox" or "brave".

;CONTROLS:
;CTRL+1 = Rewind
;CTRL+3 = Pause/Play 
;CTRL+2 = Forwind


#SingleInstance Force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#InstallKeybdHook

Process, Close, MouseBackForwardShortcutRebind.exe

YoutubeRewind(title)
{
	IfWinExist, %title%
				
		; https://superuser.com/questions/529437/how-can-i-return-focus-to-the-previous-window
		WinGet, PrevActiveProcess, ProcessName, A

		WinActivate
		sleep 15
		Send {Left}
		sleep 15
		{
			IfWinExist, ahk_exe %PrevActiveProcess%
			WinActivate
		}
}


YoutubeForwind(title)
{
	IfWinExist, %title%
				
		; https://superuser.com/questions/529437/how-can-i-return-focus-to-the-previous-window
		WinGet, PrevActiveProcess, ProcessName, A

		WinActivate
		sleep 15
		Send {Right}
		sleep 15
		{
			IfWinExist, ahk_exe %PrevActiveProcess%
			WinActivate
		}

}

YoutubeSpace(title)
{
	IfWinExist, %title%
				
		; https://superuser.com/questions/529437/how-can-i-return-focus-to-the-previous-window
		WinGet, PrevActiveProcess, ProcessName, A

		WinActivate
		sleep 15
		Send {Space}
		sleep 15
		{
			IfWinExist, ahk_exe %PrevActiveProcess%
			WinActivate
		}

}


^XButton1::YoutubeRewind("ahk_exe msedge.exe")
^XButton2::YoutubeForwind("ahk_exe msedge.exe")
XButton1 & XButton2::Media_Play_Pause

^+1::YoutubeRewind("ahk_exe msedge.exe")
^+2::YoutubeForwind("ahk_exe msedge.exe")
^+3::Media_Play_Pause

Media_Next::YoutubeForwind("ahk_exe msedge.exe")

Media_Prev::YoutubeRewind("ahk_exe msedge.exe")


#Persistent  ; Prevent the script from exiting automatically.
OnExit("ExitFunc")

ExitFunc(ExitReason, ExitCode)
{
    if ExitReason not in Logoff,Shutdown  ; Avoid spaces around the comma.
    {
        ;MsgBox, 4, , Are you sure you want to exit?
        ;IfMsgBox, No
        ;    return 1  ; Callbacks must return non-zero to avoid exit.
	run, MouseBackForwardShortcutRebind.exe

	
    }
    ; Do not call ExitApp -- that would prevent other callbacks from being called.
}
