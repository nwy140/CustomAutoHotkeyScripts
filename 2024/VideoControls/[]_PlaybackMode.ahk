~[ & ]::SwitchProcess()
#Backspace::SwitchProcess()
#Numpad1::TrelloProcess()
#Numpad2::SwitchProcess()


SwitchProcess(){
    Process, Exist, MPV_VideoControls.exe
    Process, Close, TrelloVideoControls.exe

    ;MsgBox,%errorlevel%
    If(errorlevel) ; If found, do nothing.
    {
        Process, Close, MPV_VideoControls.exe

        ;run, VivaldiVideoControls.exe
        run, EdgeVideoControls.exe

    }
    else ; If not found start.
    {
        ;Process, Close, VivaldiVideoControls.exe
        Process, Close, EdgeVideoControls.exe

        run, MPV_VideoControls.exe
    }

}


TrelloProcess(){

    Process, Exist, TrelloVideoControls.exe
    ;MsgBox,%errorlevel%
    If(errorlevel) ; If found, do nothing.
    {
    }
    else ; If not found start.
    {
        Process, Close, EdgeVideoControls.exe
        Process, Close, MPV_VideoControls.exe

        run, TrelloVideoControls.exe	
    }
}