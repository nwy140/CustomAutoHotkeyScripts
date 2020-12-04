
!XButton2:: ; switch to next desktop with Windows key + Left Alt key

  SendInput #^{Right}
  Return
!XButton1:: ; switch to previous desktop with Windows key + Left CTRL key

  SendInput #^{Left}
  Return

#XButton2:: ; switch to next desktop with Windows key + Left Alt key

  SendInput #^{Right}
  Return
#XButton1:: ; switch to previous desktop with Windows key + Left CTRL key

  SendInput #^{Left}
  Return
  
!Q::Send !{F4}
 
 
; swap window left wi.th ctrl window left


 



; Disable win key

LWin & vk07::return
LWin::return
RWin & vk07::return
RWin::return
