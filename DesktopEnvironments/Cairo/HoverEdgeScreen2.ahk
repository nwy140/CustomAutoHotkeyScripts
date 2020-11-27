sysget, var_, monitorworkarea

gui, color, 0x000000
gui, +alwaysontop +toolwindow -caption
gui, show, w1 h%var_bottom% x0 y1080, left_win
winset, transparent, 1, left_win
foo2 = False
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
	 foo2 = True
	} 
       }
	else{
	  foo2 = False
	}
      countdown := 0
    }
   return
 }

