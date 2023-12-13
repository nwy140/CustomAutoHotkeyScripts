
REM Source  https://answers.microsoft.com/en-us/windows/forum/all/how-to-remove-magnifyexe-form-windows-7/ceb37643-5d38-4c85-9179-2b00317987fe

takeown /f "%windir%\system32\Magnify.exe" && icacls "%windir%\system32\Magnify.exe" /grant administrators:F
echo "Took ownership of Magnify.exe!"
move "%windir%\system32\Magnify.exe" "%windir%\system32\Magnify.exe.ihateyou"
pause
