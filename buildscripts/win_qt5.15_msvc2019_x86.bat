@echo off
set PROJECT=ImageViewer
set ARCH=x86
set VCVARS_ARCH=x64_x86
call "%~dp0\..\buildscripts\helpers\find_vcvarsall.bat" 2019
set VCVARS="%VS2019_VCVARSALL%"
if "x%QT_PATH%x" == "xx" set QT_PATH=C:\Qt\5.15.2\msvc2019_static
set BUILDDIR=build_win_qt5.15_msvc2019_%ARCH%
set SUFFIX=_qt5.15_msvc2019_%ARCH%
set APP_PATH=src\%PROJECT%
set NMAKE_CMD="%~dp0\..\buildscripts\helpers\jom.exe" /J %NUMBER_OF_PROCESSORS%
set ZIP_CMD="%~dp0\..\buildscripts\helpers\zip.exe"

call %VCVARS% %VCVARS_ARCH%
set PATH=%QT_PATH%\bin;%PATH%

cd "%~dp0"
cd ..
rmdir /S /Q %BUILDDIR% 2>nul >nul
mkdir %BUILDDIR%
cd %BUILDDIR%
qmake -r CONFIG+="release" QTPLUGIN.imageformats="qico qsvg qtiff" CONFIG+="enable_update_checking" CONFIG+="enable_mshtml enable_nanosvg" ..\%PROJECT%.pro
%NMAKE_CMD%
if not exist %APP_PATH%\release\%PROJECT%.exe (
    if NOT "%CI%" == "true" pause
    exit /b 1
)
copy %APP_PATH%\release\%PROJECT%.exe ..\%PROJECT%%SUFFIX%.exe
cd ..
%ZIP_CMD% -9r %PROJECT%%SUFFIX%.zip %PROJECT%%SUFFIX%.exe

if NOT "%CI%" == "true" pause
