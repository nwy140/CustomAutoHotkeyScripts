# https://superuser.com/questions/1462389/how-to-emulate-f8-keypress-with-cmd-powershell


$wshell = New-Object -ComObject wscript.shell
# $wshell.Sendkeys("%{ }")

$wshell.Sendkeys("%{END}")