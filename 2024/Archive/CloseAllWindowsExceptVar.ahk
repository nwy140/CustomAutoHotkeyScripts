
;https://www.autohotkey.com/board/topic/22934-close-all-windows-with-this-string-in-title/

DetectHiddenWindows, Off 

SetTitleMatchMode, 2 

WinGet, WindowList, List 



Var = Github 



Loop, %WindowList% 

	{ 

		WinGetTitle, Title, % "ahk_id " . WindowList%A_Index% 

		If (Title) && (Title != "Program Manager")

		;IfInString, Title, %Var%
		IfNotInString, Title, %Var%

			WinClose, % "ahk_id " . WindowList%A_Index% 

	}