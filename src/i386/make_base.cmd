@call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat"

set libfile=%~dp0..\..\x86\msvcrt.lib


copy "%~dp0msvcrt.lib" "%libfile%" /y

echo ɾ��msvcrt.dll��������

lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\misc\dlllib\objfre\i386\gs_report.obj
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\eh\dlllib\objfre\i386\ehvecctr.obj
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\eh\dlllib\objfre\i386\ehvecdtr.obj
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\eh\dlllib\objfre\i386\ehvcccvb.obj
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\eh\dlllib\objfre\i386\ehvccctr.obj
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\eh\dlllib\objfre\i386\ehveccvb.obj


lib /def:"%~dp0msvcrt.def" /out:"%~dp0msvcrtdll.lib"

lib "%libfile%" "%~dp0msvcrtdll.lib"

del "%~dp0msvcrtdll.*" /q


"%~dp0..\YYLib.exe" /MACHINE:x86 /def:"%~dp0msvcrt_forward.def"  /out:"%~dp0forward\msvcrt_forward.obj"

pushd "%~dp0"

lib "%libfile%" "forward\msvcrt_forward.obj"

popd

pause