

Loop
{
    ; Kill the msedge process if it is running
    Process, Close, firefox.exe
    Process, Close, msedge.exe
}
return
