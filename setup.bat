::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhSA==
::ZQ05rAF9IBncCkqN+0xwdVsFLA==
::ZQ05rAF9IAHYFVzEqQIDOBpGRyuxfHi/EqAMiA==
::eg0/rx1wNQPfEVWB+kM9LVsJDDeSPXmxKYZc++3v+vrn
::fBEirQZwNQPfEVWB+kM9LVsJDBeHKH6qRoYM6frwwNnn
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWGqU9VA7Byg0
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBZVSAWPAE+/Fb4I5/jH3PqGsEYyZ94sfZvOyvS9MOEB4WrXO5M10xo=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal

set "source=SparkOS"
set "target=C:\SparkOS"
set "exe=SparkOS.exe"

:: Check if source folder exists
if not exist "%source%" (
    echo Error: %source% folder not found!
    pause
    exit /b 1
)

:: Copy to target directory
echo Installing SparkOS...
xcopy "%source%" "%target%" /E /I /H /Y >nul

:: Create shortcuts
set "desktop=%USERPROFILE%\Desktop\SparkOS.lnk"
set "startmenu=%APPDATA%\Microsoft\Windows\Start Menu\Programs\SparkOS.lnk"

echo Creating shortcuts...
powershell -Command "$s=(New-Object -COM WScript.Shell).CreateShortcut('%desktop%');$s.TargetPath='%target%\%exe%';$s.Save()"
powershell -Command "$s=(New-Object -COM WScript.Shell).CreateShortcut('%startmenu%');$s.TargetPath='%target%\%exe%';$s.Save()"

echo Installation completed successfully!
pause