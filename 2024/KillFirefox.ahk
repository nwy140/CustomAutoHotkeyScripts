;https://www.autohotkey.com/boards/viewtopic.php?t=25199

Loop
{
Process, Exist, firefox.exe

;MsgBox,%errorlevel%
If(errorlevel) ; If found, do nothing.
{
Process, Close, firefox.exe
}



}
