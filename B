WScript.Sleep 1000

WScript.Sleep 1000

strComputer = "."

Set objWMIService = GetObject("winmgmts://" & strComputer & "/root/cimv2")

Set colProcessList = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'QQProtect.exe'")

For Each objProcess in colProcessList

	objProcess.Terminate()

Next
'Set objShell = CreateObject("Wscript.Shell")
'objShell.run """E:\QQ\Bin\TIM.exe"""
