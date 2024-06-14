;Source: https://forum.obsidian.md/t/autohotkey-script-for-controlling-youtube-media-without-losing-focus-on-obsidian/55435

; In case you have another browser, replace where it says "mpc-be64" 
; by the name of your browser with: "mpc-be64"; "opera", "vivaldi", "firefox" or "brave".

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


;^+3::YoutubePause("ahk_exe mpc-be64.exe")

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


^+1::YoutubeRewind("ahk_exe mpc-be64.exe")

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



^+2::YoutubeForwind("ahk_exe mpc-be64.exe")

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
YoutubeSpace(title)
{
	IfWinExist, %title%
		WinActivate
		sleep 15
		Send {Space}
		sleep 15
		{
			IfWinExist, ahk_exe Obsidian.exe
			WinActivate
		}
	

}

return


^+3::YoutubeSpace("ahk_exe mpc-be64.exe")

F23::YoutubeForwind("ahk_exe mpc-be64.exe")

Help::YoutubeRewind("ahk_exe mpc-be64.exe")

ScrollLock::YoutubeSpace("ahk_exe mpc-be64.exe")

