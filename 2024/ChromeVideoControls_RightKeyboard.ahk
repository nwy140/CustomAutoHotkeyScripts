;Source: https://forum.obsidian.md/t/autohotkey-script-for-controlling-youtube-media-without-losing-focus-on-obsidian/55435

; In case you have another browser, replace where it says "chrome" 
; by the name of your browser with: "msedge"; "opera", "vivaldi", "firefox" or "brave".

;CONTROLS:
;CTRL+J = Rewind
;CTRL+K = Pause/Play
;CTRL+L = Forwind


#SingleInstance Force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#InstallKeybdHook

; YOUTUBE (Microsoft-Edge)-OBSIDIAN FOCUS CHANGE: --------------------------------------


^k::YoutubePause("ahk_exe chrome.exe")

YoutubePause(title)
{
	IfWinExist, %title%
		WinActivate
		sleep 15
		Send k
		sleep 15
		{
			IfWinExist, ahk_exe Obsidian.exe
			WinActivate
		}
	

}

return


^j::YoutubeRewind("ahk_exe chrome.exe")

YoutubeRewind(title)
{
	IfWinExist, %title%
		WinActivate
		sleep 15
		Send j
		sleep 15
		{
			IfWinExist, ahk_exe Obsidian.exe
			WinActivate
		}
	

}

return



^l::YoutubeForwind("ahk_exe chrome.exe")

YoutubeForwind(title)
{
	IfWinExist, %title%
		WinActivate
		sleep 15
		Send l
		sleep 15
		{
			IfWinExist, ahk_exe Obsidian.exe
			WinActivate
		}
	

}

return