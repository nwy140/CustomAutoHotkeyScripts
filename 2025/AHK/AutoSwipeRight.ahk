#Persistent
toggle := false

F1::
toggle := !toggle
if (toggle) {
    SetTimer, SwipeRight, 2500
    ToolTip, Swiping right every 2.5s
} else {
    SetTimer, SwipeRight, Off
    ToolTip, Swiping stopped
}
SetTimer, RemoveToolTip, -1000
return

SwipeRight:
Send, {Right}
return

RemoveToolTip:
ToolTip
return
