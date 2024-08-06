~[ & ]::SwitchProcess()

SwitchProcess(){
    Process, Exist, MPV_VideoControls.exe
    ;MsgBox,%errorlevel%
    If(errorlevel) ; If found, do nothing.
    {
        Process, Close, MPV_VideoControls.exe
        run, VivaldiVideoControls.exe
    }
    else ; If not found start.
    {
        Process, Close, VivaldiVideoControls.exe
        run, MPV_VideoControls.exe
    }

}