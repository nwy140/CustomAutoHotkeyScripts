#InstallKeybdHook  ; this MUST be called at the start of your script

AnyKeyPressed() ; returns a 1 if any keyboard key is pressed, else returns 0
{
    if( A_TimeIdlePhysical < 25 )
MsgBox 1

        return 1
MsgBox 0

return 0
}

w::
AnyKeyPressed()
