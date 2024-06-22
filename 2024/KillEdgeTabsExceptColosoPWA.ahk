;https://www.autohotkey.com/board/topic/22934-close-all-windows-with-this-string-in-title/

;https://www.autohotkey.com/boards/viewtopic.php?t=107735

DetectHiddenWindows, Off 

SetTitleMatchMode, 2 

;WinGet, WindowList, List 


allow1 = Coloso
allow2 = A Soft Murmur
allow3 = Moe
allow4 = Duolingo

Loop{
WinGet, WindowList, List, ahk_exe msedge.exe
Loop, %WindowList%
	{ 

		WinGetTitle, Title, % "ahk_id " . WindowList%A_Index% 

		If (Title) ; && (Title != "Program Manager")
		
		IfInString, Title, %allow1%
			break
		IfInString, Title, %allow2%
			break

		IfInString, Title, %allow3%
			break
		IfInString, Title, %allow4%
			break

		;IfNotInString, Title, %Var%

		;WinGetTitle, Title, A
		;MsgBox, The active window is "%Title%".

		WinClose, % "ahk_id " . WindowList%A_Index% 
	}
}

