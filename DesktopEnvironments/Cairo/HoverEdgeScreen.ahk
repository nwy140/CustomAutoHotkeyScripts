sysget, var_, monitorworkarea

gui, color, 0x000000
gui, +alwaysontop +toolwindow -caption
gui, show, w1 h%var_bottom% x0 y0, left_win
winset, transparent, 1, left_win
foo = False
onmessage(0x200, "edge")
return

edge()
 {
   static countdown := 0
   if (countdown = 0)
    {
      settimer, check, -1000
      countdown := 1
    }
   return
   
   check:
    {
      mousegetpos, , , win
      wingettitle, title, ahk_id %win%
      if (title = "left_win")
       {
	if (!foo){
         sendinput, #{Tab}
	 foo = True
	} 
       }
	else{
	  foo = False
	}
      countdown := 0
    }
   return
 }

