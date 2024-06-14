
;https://www.autohotkey.com/board/topic/22934-close-all-windows-with-this-string-in-title/

;https://www.autohotkey.com/boards/viewtopic.php?t=107735

DetectHiddenWindows, Off 

SetTitleMatchMode, 2 

;WinGet, WindowList, List 


Var = Coloso 

WinGet, WindowList, List, ahk_exe msedge.exe
Loop, %WindowList%
	{ 

		WinGetTitle, Title, % "ahk_id " . WindowList%A_Index% 

		If (Title) && (Title != "Program Manager")
		
		;IfInString, Title, %Var%
		IfNotInString, Title, %Var%

			WinClose, % "ahk_id " . WindowList%A_Index% 

	
	}
			