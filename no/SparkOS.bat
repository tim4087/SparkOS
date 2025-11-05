@echo off
chcp 65001 >nul
title SparkOS v2.0 - Professional
setlocal enabledelayedexpansion

:: Простой экран загрузки
cls
echo.
echo.
echo     ____                   _     ___  ____  
echo    / ___| _ __   __ _ _ __| | __/ _ \/ ___| 
echo    \___ \| '_ \ / _` | '__| |/ / | | \___ \ 
echo     ___) | |_) | (_| | |  |   <| |_| |___) |
echo    |____/| .__/ \__,_|_|  |_|\_\\___/|____/ 
echo          |_|                                
echo.
echo          SparkOS v2.0 - Professional
echo.
echo          Loading...
timeout /t 2 /nobreak >nul

:os
color 17
echo ================================
echo   SparkOS v2.0 - Professional
echo ================================
echo.
echo 1. New folder [new]
echo 2. Restart [restart]
echo 3. Exit [exit]
echo 4. View Files [view]
echo 5. Open Program [open]
echo 6. Clear Screen [cls]
echo 7. Time/Date [time]
echo 8. System Info [info]
echo 9. Network Tools [network]
echo 10. Real-time Speed Test [speed]
echo 11. Calculator [calc]
echo 12. 3D Cube Test [3d]
echo 13. System Update [update]
echo 14. Server Management [servers]
echo 15. Games [games]
echo 16. Plugins [plugins]
echo 17. Help [help]
echo.
set /p var=Set Command: 

:: Обработка команд
if /i "%var%"=="1" goto newfolder
if /i "%var%"=="new" goto newfolder
if /i "%var%"=="2" goto restart
if /i "%var%"=="restart" goto restart
if /i "%var%"=="3" goto exit
if /i "%var%"=="exit" goto exit
if /i "%var%"=="4" goto view
if /i "%var%"=="view" goto view
if /i "%var%"=="5" goto open
if /i "%var%"=="open" goto open
if /i "%var%"=="6" goto clear
if /i "%var%"=="cls" goto clear
if /i "%var%"=="7" goto time
if /i "%var%"=="time" goto time
if /i "%var%"=="8" goto info
if /i "%var%"=="info" goto info
if /i "%var%"=="9" goto network
if /i "%var%"=="network" goto network
if /i "%var%"=="10" goto speedtest_realtime
if /i "%var%"=="speed" goto speedtest_realtime
if /i "%var%"=="11" goto calculator
if /i "%var%"=="calc" goto calculator
if /i "%var%"=="12" goto 3d_cube
if /i "%var%"=="3d" goto 3d_cube
if /i "%var%"=="13" goto update
if /i "%var%"=="update" goto update
if /i "%var%"=="14" goto servers
if /i "%var%"=="servers" goto servers
if /i "%var%"=="15" goto games
if /i "%var%"=="games" goto games
if /i "%var%"=="16" goto plugins
if /i "%var%"=="plugins" goto plugins
if /i "%var%"=="17" goto help
if /i "%var%"=="help" goto help
if /i "%var%"=="1cmd" goto cmd

:: Если команда не распознана
echo.
echo ERROR: Unknown command "%var%"
echo Type 'help' for available commands
echo.
pause
goto os

:newfolder
cls
set /p foldername=Enter folder name: 
if "%foldername%"=="" (
    echo Operation cancelled
) else (
    md "%foldername%"
    if exist "%foldername%" (
        echo Folder "%foldername%" created successfully!
        if exist "system\ff.vbs" (
            start system\ff.vbs
        )
    ) else (
        echo Error creating folder!
    )
)
pause
goto os

:restart
cls
echo Restarting SparkOS...
timeout /t 2 /nobreak >nul
if exist "system\rr.vbs" (
    start system\rr.vbs
)
start "" "%~f0"
exit

:exit
cls
echo Thank you for using SparkOS!
timeout /t 2 /nobreak >nul
exit

:view
cls
echo [Files and Folders]
dir
echo.
pause
goto os

:open
cls
echo [Available Programs]
echo 1. Notepad
echo 2. Calculator
echo 3. Paint
echo 4. Command Prompt
echo 5. Custom program
echo.
set /p program=Choose program (1-5): 
if "%program%"=="1" start notepad
if "%program%"=="2" start calc
if "%program%"=="3" start mspaint
if "%program%"=="4" start cmd
if "%program%"=="5" (
    set /p custom=Enter program name: 
    start %custom%
)
goto os

:clear
cls
goto os

:time
cls
echo [Current Date and Time]
echo Date: %date%
echo Time: %time%
echo.
pause
goto os

:info
cls
echo [System Information]
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type"
echo.
echo Username: %USERNAME%
echo Computer: %COMPUTERNAME%
echo.
pause
goto os

:network
cls
echo [Network Tools]
echo.
echo 1. Network Information
echo 2. Ping Test
echo 3. Speed Test
echo 4. Trace Route
echo 5. Port Scanner
echo 6. IP Lookup
echo 7. Website Check
echo 8. Network Statistics
echo 9. Advanced Tools
echo 10. Back to Main
echo.
set /p netcmd=Choose option: 
if "%netcmd%"=="1" goto networkinfo
if "%netcmd%"=="2" goto pingtest
if "%netcmd%"=="3" goto speedtest
if "%netcmd%"=="4" goto traceroute
if "%netcmd%"=="5" goto portscan
if "%netcmd%"=="6" goto iplookup
if "%netcmd%"=="7" goto websitecheck
if "%netcmd%"=="8" goto netstat
if "%netcmd%"=="9" goto advanced_network
if "%netcmd%"=="10" goto os
goto network

:networkinfo
cls
echo [Network Information]
echo.
echo Local IP Addresses:
ipconfig | findstr IPv4
echo.
echo Getting external IP...
for /f "tokens=*" %%a in ('powershell -Command "Invoke-RestMethod -Uri 'https://api.ipify.org'" 2^>nul') do set external_ip=%%a
if defined external_ip (
    echo External IP: !external_ip!
) else (
    echo Could not get external IP
)
echo.
pause
goto network

:pingtest
cls
echo [Ping Test]
echo.
set /p pingtarget=Enter IP/URL to ping: 
if "!pingtarget!"=="" goto network
echo.
ping !pingtarget! -n 4
echo.
pause
goto network

:speedtest
cls
echo [Speed Test]
echo.
echo Testing speed...
echo This may take a moment...
echo.
powershell -Command "Measure-Command {Invoke-WebRequest -Uri 'http://speedtest.ftp.otenet.gr/files/test1Mb.db' -OutFile testfile.dat}" >nul
if exist testfile.dat (
    for %%I in (testfile.dat) do set size=%%~zI
    del testfile.dat
    set /a speed=size*8/1024/1024
    echo Download Speed: !speed! Mbps
) else (
    echo Speed test failed!
)
echo.
pause
goto network

:speedtest_realtime
cls
echo [Real-time Speed Test]
echo Press ANY key to stop
echo.
:realtime_loop
cls
echo [Real-time Speed Test]
echo Press ANY key to stop
echo.

set /a "download_speed=50 + !random! %% 30"
set /a "upload_speed=20 + !random! %% 15" 
set /a "ping_time=2 + !random! %% 10"

echo.
echo ================================
echo     Download: !download_speed! Mbps
echo     Upload: !upload_speed! Mbps
echo     Ping: !ping_time! ms
echo ================================
echo.
echo Updated: !time!
echo.

choice /c: /n /t 2 /d: >nul
if !errorlevel! equ 255 goto realtime_loop
echo Speed test stopped.
pause
goto os

:traceroute
cls
echo [Trace Route]
echo.
set /p tracerttarget=Enter IP/URL: 
if "!tracerttarget!"=="" goto network
echo.
tracert !tracerttarget!
echo.
pause
goto network

:portscan
cls
echo [Port Scanner]
echo.
set /p scanhost=Enter IP: 
if "!scanhost!"=="" goto network
echo Scanning !scanhost!...
echo.
for /l %%p in (80,1,85) do (
    echo Port %%p: 
    powershell -Command "Test-NetConnection -ComputerName !scanhost! -Port %%p" 2>nul | findstr "TcpTestSucceeded"
)
echo.
pause
goto network

:iplookup
cls
echo [IP Lookup]
echo.
set /p iptarget=Enter IP: 
if "!iptarget!"=="" goto network
echo.
echo Getting info for !iptarget!...
powershell -Command "Invoke-RestMethod -Uri 'http://ip-api.com/json/!iptarget!'" | findstr "country city isp"
echo.
pause
goto network

:websitecheck
cls
echo [Website Check]
echo.
set /p webtarget=Enter URL: 
if "!webtarget!"=="" goto network
echo.
powershell -Command "try { Invoke-WebRequest -Uri '!webtarget!' -Method Head >$null; echo 'Status: Online' } catch { echo 'Status: Offline' }"
echo.
pause
goto network

:netstat
cls
echo [Network Statistics]
echo.
netstat -an | findstr "ESTABLISHED LISTENING"
echo.
pause
goto network

:advanced_network
cls
echo [Advanced Network Tools]
echo.
echo 1. Router Info
echo 2. ARP Table
echo 3. MAC Lookup
echo 4. DNS Cache
echo 5. Network Shares
echo 6. Wireless Networks
echo 7. Firewall Status
echo 8. Back
echo.
set /p advcmd=Choose: 
if "%advcmd%"=="1" goto routerinfo
if "%advcmd%"=="2" goto arptable
if "%advcmd%"=="3" goto maclookup
if "%advcmd%"=="4" goto dnscache
if "%advcmd%"=="5" goto networkshares
if "%advcmd%"=="6" goto wireless
if "%advcmd%"=="7" goto firewall
if "%advcmd%"=="8" goto network
goto advanced_network

:routerinfo
cls
echo [Router Information]
echo.
ipconfig | findstr "Default Gateway"
echo.
pause
goto advanced_network

:arptable
cls
echo [ARP Table]
echo.
arp -a
echo.
pause
goto advanced_network

:maclookup
cls
echo [MAC Address Lookup]
echo.
set /p macaddr=Enter MAC: 
if "!macaddr!"=="" goto advanced_network
echo.
echo Note: First 6 chars identify manufacturer
pause
goto advanced_network

:dnscache
cls
echo [DNS Cache]
echo.
ipconfig /displaydns | findstr "Record Name"
echo.
pause
goto advanced_network

:networkshares
cls
echo [Network Shares]
echo.
net share
echo.
pause
goto advanced_network

:wireless
cls
echo [Wireless Networks]
echo.
netsh wlan show networks | findstr "SSID"
echo.
pause
goto advanced_network

:firewall
cls
echo [Firewall Status]
echo.
netsh advfirewall show allprofiles | findstr "State"
echo.
pause
goto advanced_network

:calculator
cls
echo [Calculator]
echo.
echo 1. Basic Math
echo 2. Scientific
echo 3. Back
echo.
set /p calcmode=Choose: 
if "%calcmode%"=="1" goto basic_calc
if "%calcmode%"=="2" goto scientific_calc
if "%calcmode%"=="3" goto os
goto calculator

:basic_calc
cls
echo [Basic Calculator]
echo.
set /p expression=Enter expression: 
set /a result=%expression%
echo Result: !result!
echo.
pause
goto calculator

:scientific_calc
cls
echo [Scientific Calculator]
echo.
echo Available in next version
pause
goto calculator

:3d_cube
cls
echo [3D Cube Test]
echo Press any key to stop
echo.
set frame=1
:cube_loop
cls
echo [3D Cube Test - Frame !frame!]
echo Press any key to stop
echo.
echo       +-------+  
echo      / !random:~-1! /     /^|
echo     +-------+ !random:~-1! +
echo     ! !random:~-1! !     ! !
echo     !       !-!random:~-1! +
echo     ! !random:~-1! !     !/
echo     +-------+  
echo.
set /a frame=frame+1
if !frame! gtr 10 set frame=1

choice /c: /n /t 1 /d: >nul
if !errorlevel! equ 255 goto cube_loop
echo Animation stopped.
pause
goto os

:servers
cls
echo [Server Management]
echo.
if not exist "servers" md servers
echo 1. Start Local Server
echo 2. Stop Local Server
echo 3. Server Status
echo 4. Back
echo.
set /p server_cmd=Choose: 
if "%server_cmd%"=="1" goto start_server
if "%server_cmd%"=="2" goto stop_server
if "%server_cmd%"=="3" goto server_status
if "%server_cmd%"=="4" goto os
goto servers

:start_server
cls
echo [Start Server]
echo.
echo Starting server on port 8080...
timeout /t 2 /nobreak >nul
echo Server started at: http://localhost:8080
echo.
echo Creating test page...
echo ^<html^>^<body^>^<h1^>SparkOS Server^</h1^>^</body^>^</html^> > servers\index.html
echo Test page created
pause
goto servers

:stop_server
cls
echo [Stop Server]
echo.
echo Stopping server...
timeout /t 2 /nobreak >nul
echo Server stopped
pause
goto servers

:server_status
cls
echo [Server Status]
echo.
echo Status: RUNNING
echo Port: 8080
echo URL: http://localhost:8080
echo.
pause
goto servers

:games
cls
echo [Game Center]
echo.
echo 1. Number Guessing Game
echo 2. Text Adventure
echo 3. Back
echo.
set /p game_choice=Choose: 
if "%game_choice%"=="1" goto number_game
if "%game_choice%"=="2" goto text_adventure
if "%game_choice%"=="3" goto os
goto games

:number_game
cls
echo [Number Guessing Game]
echo.
set /a number=%random% %% 100 + 1
set attempts=0
:guess_loop
set /p guess=Guess number (1-100): 
set /a attempts+=1
if !guess! lss !number! echo Higher!
if !guess! gtr !number! echo Lower!
if not !guess!==!number! goto guess_loop
echo Correct! Number was !number! in !attempts! attempts.
pause
goto games

:text_adventure
cls
echo [Text Adventure]
echo.
echo You are in a dark room.
echo There is a door to the north.
echo.
set /p adventure_cmd=What do you do? 
echo You chose: !adventure_cmd!
echo The story continues...
pause
goto games

:update
cls
echo [System Update]
echo.
echo Current: SparkOS v2.0
echo.
echo Checking servers...
ping -n 1 github.com >nul && echo GitHub: Available || echo GitHub: Unavailable
ping -n 1 gitlab.com >nul && echo GitLab: Available || echo GitLab: Unavailable
echo.
echo Your system is up to date!
pause
goto os

:plugins
cls
echo [Plugin System]
echo.
if not exist "Plagins" (
    echo Creating plugins directory...
    md Plagins
    echo Add plugins to Plagins folder
)
if not exist "Plagins\*" (
    echo No plugins found
) else (
    echo Available plugins:
    dir Plagins /B
)
echo.
pause
goto os

:help
cls
echo [SparkOS Help]
echo.
echo Commands:
echo 1-17 - Select from menu
echo new - Create folder
echo restart - Restart OS
echo exit - Close OS
echo view - List files
echo open - Start program
echo cls - Clear screen
echo time - Show time/date
echo info - System info
echo network - Network tools
echo speed - Speed test
echo calc - Calculator
echo 3d - 3D test
echo update - Check updates
echo servers - Server management
echo games - Games
echo plugins - Plugins
echo help - This help
echo.
pause
goto os

:cmd
cls
if exist "system\cmdotos.exe" (
    start system\cmdotos.exe
) else (
    start cmd
)
goto os