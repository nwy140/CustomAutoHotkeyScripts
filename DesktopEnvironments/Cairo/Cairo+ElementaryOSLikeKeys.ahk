
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

<#<^Right::Send #{ Right } 
 
<#<^Left::Send #{ Left }

#Right::Send #^{Right}
 
#Left::Send #^{Left}

 
#Up::Send #{Tab}


; Disable win key
LWin::
return


