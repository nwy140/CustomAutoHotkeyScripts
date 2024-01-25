;Source: https://forum.obsidian.md/t/autohotkey-script-for-controlling-youtube-media-without-losing-focus-on-obsidian/55435

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

; YOUTUBE (Microsoft-Edge)-OBSIDIAN FOCUS CHANGE: --------------------------------------


;^+3::YoutubePause("ahk_exe msedge.exe")

;YoutubePause(title)
;{
;	IfWinExist, %title%
;		WinActivate
;		sleep 15
;		Send k
;		sleep 15
;		{
;			IfWinExist, ahk_exe Obsidian.exe
;			WinActivate
;		}
	

;}

;return


^+1::YoutubeRewind("ahk_exe msedge.exe")

YoutubeRewind(title)
{
	IfWinExist, %title%
		WinActivate
		sleep 15
		Send {Left}
		sleep 15
		{
			IfWinExist, ahk_exe Obsidian.exe
			WinActivate
		}
	

}

return



^+2::YoutubeForwind("ahk_exe msedge.exe")

YoutubeForwind(title)
{
	IfWinExist, %title%
		WinActivate
		sleep 15
		Send {Right}
		sleep 15
		{
			IfWinExist, ahk_exe Obsidian.exe
			WinActivate
		}
	

}

return


^+3::
Send {Media_Play_Pause}
return

Media_Next::YoutubeForwind("ahk_exe msedge.exe")

Media_Prev::YoutubeRewind("ahk_exe msedge.exe")
