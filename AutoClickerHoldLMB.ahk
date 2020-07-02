Clicker:=false
loop
{
getkeystate, state, F6
if state = D
{
Clicker:=true
}
 
getkeystate, state, F7
if state = D
{
Clicker:=false
}
 
}
 
 
*~$LButton::
 
While Clicker==true && getkeystate("LButton", "P") {
 
click
sleep 21
 
 
}
return