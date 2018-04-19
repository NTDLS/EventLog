@echo Off

Set Path1=C:\Program Files\Microsoft Visual Studio .NET 2003\Vc7\bin
Set Path2=C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\Bin
Set Path3=C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\IDE

set path=%path%;%path1%;%path2%;%path3%;

Rem To build EventMsg.mc, use the following command: 
mc.exe -u -U EventMsg.mc

Rem Next, use resource compiler to build the resource strings as follows:
"rc.exe" -r EventMsg.rc

Rem  Finally, use the resulting Sample.res file to build a resource-only DLL.
link.exe -MACHINE:X86 -dll -noentry -out:EventMsg.dll EventMsg.res

Del *.rc
Del *.res
del *.bin
Pause
