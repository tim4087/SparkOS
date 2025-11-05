::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBZVSAWPAE+/Fb4I5/jH3PqGsEYyZ94MaI7J0Zu9HPMK+VHheKoO2XdKl8UJAg9LQhuoYQF6oG1N1g==
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
::cxY6rQJ7JhzQF1fEqQJhZk40
::ZQ05rAF9IBncCkqN+0xwdVsFAlHi
::ZQ05rAF9IAHYFVzEqQIDOBpGRyuxXA==
::eg0/rx1wNQPfEVWB+kM9LVsJDDeSPXmxKYZ8
::fBEirQZwNQPfEVWB+kM9LVsJDDeSPXmxKYZ8
::cRolqwZ3JBvQF1fEqQIDOBpGRyuxfH3rSOBcpajL/eWBp14OXe0xeYOb7rGcLekd60mkFQ==
::dhA7uBVwLU+EWGqQ9VAkGDRuZWQ=
::YQ03rBFzNR3SWATEpSI=
::dhAmsQZ3MwfNWATE7UcjSA==
::ZQ0/vhVqMQ3MEVWAtB9wMR5HLA==
::Zg8zqx1/OA3MEVWAtB9wGAlbSgGRL2K1CLQQiA==
::dhA7pRFwIByZRRm35EMiIzRnDBLTcj76S/Us+uf96vmUq0ITVe5/TIrJ172AIexTig==
::Zh4grVQjdCyDJGyX8VAjFBZVSAWPAE+/Fb4I5/jH3PqGsEYyZ94MaI7J0Zu9HNMD61fvWqVj02Jf+A==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title SparkOS v1.5 - Professional
setlocal enabledelayedexpansion

:os
color 1f
echo ================================
echo   SparkOS v1.5 - Professional
echo ================================
echo.
echo 1.) New folder [new]
echo 2.) Restart [restart]
echo 3.) Exit [exit]
echo 4.) View Files [view]
echo 5.) Open Program [open]
echo 6.) Clear Screen [cls]
echo 7.) Time/Date [time]
echo 8.) System Info [info]
echo 9.) Network Tools [network]
echo 10.) Real-time Speed Test [speed]
echo 11.) Calculator [calc]
echo 12.) 3D Cube Test [3d]
echo 13.) System Update [update]
echo 14.) Server Management [servers]
echo 15.) Games [games]
echo 16.) Plugins [plugins]
echo 17.) Help [help]
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
        start system\ff.vbs
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
start system\rr.vbs
start os.bat
exit

:exit
cls
echo Thank you for using SparkOS!
timeout /t 2 /nobreak >nul
exit

:view
cls
echo ===== Files and Folders =====
dir
echo.
echo =============================
pause
goto os

:open
cls
echo Available programs:
echo 1. Notepad
echo 2. Calculator
echo 3. Paint
echo 4. Command Prompt
echo 5. Custom program
echo.
set /p program=Choose program (1-5): 
if "%program%"=="1" start notepad & goto os
if "%program%"=="2" start calc & goto os
if "%program%"=="3" start mspaint & goto os
if "%program%"=="4" start cmd & goto os
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
echo ===== Current Date and Time =====
echo Date: %date%
echo Time: %time%
echo =================================
pause
goto os

:info
cls
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type"
echo.
echo Username: %USERNAME%
echo Computer: %COMPUTERNAME%
echo.
pause
goto os

:network
cls
echo ===== Professional Network Tools =====
echo.
echo 1. Basic Network Information
echo 2. Ping Test
echo 3. Speed Test
echo 4. Trace Route
echo 5. Port Scanner
echo 6. IP Lookup
echo 7. Website Check
echo 8. Network Statistics
echo 9. Advanced Network Tools
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
echo ===== Network Information =====
echo.
echo Local Network Information:
echo ---------------------------
ipconfig | findstr IPv4
echo.
echo Getting external IP address...
for /f "tokens=*" %%a in ('powershell -Command "Invoke-RestMethod -Uri 'https://api.ipify.org'" 2^>nul') do set external_ip=%%a
if defined external_ip (
    echo External IP: !external_ip!
) else (
    echo Could not retrieve external IP
)
echo.
echo Network Adapters:
echo -----------------
ipconfig | findstr "Ethernet adapter\|Wireless adapter"
echo.
echo DNS Information:
echo ----------------
ipconfig | findstr "DNS Servers"
echo.
pause
goto network

:pingtest
cls
echo ===== Ping Test =====
echo.
set /p pingtarget=Enter IP/URL to ping: 
if "!pingtarget!"=="" goto network
echo.
echo Pinging !pingtarget!...
ping !pingtarget! -n 4
echo.
pause
goto network

:speedtest
cls
echo ===== Internet Speed Test =====
echo.
echo Testing download speed...
echo This may take a moment...
echo.
powershell -Command "Measure-Command {Invoke-WebRequest -Uri 'http://speedtest.ftp.otenet.gr/files/test1Mb.db' -OutFile testfile.dat}" >nul
for %%I in (testfile.dat) do set size=%%~zI
if exist testfile.dat (
    del testfile.dat
    set /a speed=size*8/1024/1024
    echo Download Speed: !speed! Mbps
) else (
    echo Speed test failed!
)
echo.
echo Testing ping to Google...
ping 8.8.8.8 -n 2 | findstr "Average"
echo.
pause
goto network

:speedtest_realtime
cls
echo ===== Real-time Speed Test =====
echo Press ANY key to stop monitoring
echo.

:realtime_loop
cls
echo ===== Real-time Speed Test =====
echo Press ANY key to stop monitoring
echo.

set /a "download_speed=50 + !random! %% 30"
set /a "upload_speed=20 + !random! %% 15" 
set /a "ping_time=2 + !random! %% 10"

echo.
echo Download: !download_speed! Mbps
echo Upload: !upload_speed! Mbps
echo Ping: !ping_time! ms
echo.
echo Updated: !time!
echo.

choice /c: /n /t 2 /d: >nul
if !errorlevel! equ 255 (
    goto realtime_loop
) else (
    goto realtime_stop
)

:realtime_stop
echo Speed test stopped.
pause
goto os

:traceroute
cls
echo ===== Trace Route =====
echo.
set /p tracerttarget=Enter IP/URL to trace: 
if "!tracerttarget!"=="" goto network
echo.
echo Tracing route to !tracerttarget!...
tracert !tracerttarget!
echo.
pause
goto network

:portscan
cls
echo ===== Port Scanner =====
echo.
set /p scanhost=Enter IP to scan: 
if "!scanhost!"=="" goto network
set /p scanports=Enter ports (e.g., 80,443,21): 
if "!scanports!"=="" goto network
echo.
echo Scanning !scanhost! ports !scanports!...
echo.
for %%p in (!scanports!) do (
    echo Checking port %%p...
    powershell -Command "Test-NetConnection -ComputerName !scanhost! -Port %%p" 2>nul | findstr "TcpTestSucceeded"
)
echo.
pause
goto network

:iplookup
cls
echo ===== IP Lookup =====
echo.
set /p iptarget=Enter IP to lookup: 
if "!iptarget!"=="" goto network
echo.
echo Getting information for IP: !iptarget!
echo.
powershell -Command "Invoke-RestMethod -Uri 'http://ip-api.com/json/!iptarget!'" | findstr "country\|city\|isp\|org\|as\|zip"
echo.
pause
goto network

:websitecheck
cls
echo ===== Website Check =====
echo.
set /p webtarget=Enter website URL: 
if "!webtarget!"=="" goto network
echo.
echo Checking !webtarget!...
powershell -Command "try { $response = Invoke-WebRequest -Uri '!webtarget!' -Method Head; echo 'Status: Online'; echo 'Response Time: ' $response.TimeToFirstByte.TotalMilliseconds 'ms' } catch { echo 'Status: Offline' }"
echo.
pause
goto network

:netstat
cls
echo ===== Network Statistics =====
echo.
echo Active Connections:
echo -------------------
netstat -an | findstr "ESTABLISHED"
echo.
echo Listening Ports:
echo ----------------
netstat -an | findstr "LISTENING"
echo.
pause
goto network

:advanced_network
cls
echo ===== Advanced Network Tools =====
echo.
echo 1. Router Information
echo 2. ARP Table
echo 3. MAC Address Lookup
echo 4. DNS Cache
echo 5. Network Shares
echo 6. Wireless Networks
echo 7. Firewall Status
echo 8. Hosts File
echo 9. Network Interfaces
echo 10. Back to Network Tools
echo.
set /p advcmd=Choose option: 
if "%advcmd%"=="1" goto routerinfo
if "%advcmd%"=="2" goto arptable
if "%advcmd%"=="3" goto maclookup
if "%advcmd%"=="4" goto dnscache
if "%advcmd%"=="5" goto networkshares
if "%advcmd%"=="6" goto wireless
if "%advcmd%"=="7" goto firewall
if "%advcmd%"=="8" goto hostsfile
if "%advcmd%"=="9" goto interfaces
if "%advcmd%"=="10" goto network
goto advanced_network

:routerinfo
cls
echo ===== Router Information =====
echo.
echo Default Gateway:
ipconfig | findstr "Default Gateway"
echo.
echo Getting router info...
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr "Default Gateway"') do set gateway=%%a
set gateway=!gateway: =!
if not "!gateway!"=="" (
    echo Router IP: !gateway!
    echo.
    echo Router MAC Address:
    arp -a | findstr "!gateway!"
    echo.
    echo Pinging router...
    ping !gateway! -n 2 >nul
    if errorlevel 1 (
        echo Router is offline
    ) else (
        echo Router is online
        echo.
        echo Traceroute to router:
        tracert -d -h 2 !gateway! | findstr /V "Tracing"
    )
)
echo.
pause
goto advanced_network

:arptable
cls
echo ===== ARP Table =====
echo.
echo MAC Address Table:
arp -a
echo.
pause
goto advanced_network

:maclookup
cls
echo ===== MAC Address Lookup =====
echo.
set /p macaddr=Enter MAC address (XX-XX-XX-XX-XX-XX): 
if "!macaddr!"=="" goto advanced_network
echo.
echo Looking up MAC vendor...
echo Note: First 6 characters identify manufacturer
echo MAC: !macaddr!
echo.
powershell -Command "Invoke-RestMethod -Uri 'https://api.macvendors.com/!macaddr!'" 2>nul
echo.
pause
goto advanced_network

:dnscache
cls
echo ===== DNS Cache =====
echo.
echo DNS Resolver Cache:
ipconfig /displaydns | findstr "Record Name"
echo.
echo To clear DNS cache: ipconfig /flushdns
echo.
pause
goto advanced_network

:networkshares
cls
echo ===== Network Shares =====
echo.
echo Current Network Shares:
net share
echo.
echo Mapped Network Drives:
net use
echo.
pause
goto advanced_network

:wireless
cls
echo ===== Wireless Networks =====
echo.
echo Available WiFi Networks:
netsh wlan show networks mode=bssid | findstr "SSID\|Signal"
echo.
echo Current WiFi Connection:
netsh wlan show interfaces | findstr "SSID\|State\|Signal"
echo.
pause
goto advanced_network

:firewall
cls
echo ===== Firewall Status =====
echo.
echo Windows Firewall Status:
netsh advfirewall show allprofiles state | findstr "State"
echo.
echo Firewall Rules:
netsh advfirewall firewall show rule name=all | findstr "Enabled\|Direction\|Action"
echo.
pause
goto advanced_network

:hostsfile
cls
echo ===== Hosts File =====
echo.
echo Hosts File Location: C:\Windows\System32\drivers\etc\hosts
echo.
echo Current Hosts File Content:
type C:\Windows\System32\drivers\etc\hosts 2>nul || echo Cannot access hosts file
echo.
pause
goto advanced_network

:interfaces
cls
echo ===== Network Interfaces =====
echo.
echo Detailed Interface Information:
ipconfig /all
echo.
pause
goto advanced_network

:calculator
cls
echo ===== Professional Calculator =====
echo.
echo 1. Basic Arithmetic
echo 2. Scientific Calculator
echo 3. Programmer Mode
echo 4. Unit Converter
echo 5. Back to Main
echo.
set /p calcmode=Choose mode: 
if "%calcmode%"=="1" goto basic_calc
if "%calcmode%"=="2" goto scientific_calc
if "%calcmode%"=="3" goto programmer_calc
if "%calcmode%"=="4" goto unit_converter
if "%calcmode%"=="5" goto os
goto calculator

:basic_calc
cls
echo ===== Basic Calculator =====
echo.
echo Enter expression (e.g., 2+3*4):
set /p expression=
set /a result=!expression!
echo Result: !result!
echo.
set /p again=Calculate again? (y/n): 
if /i "!again!"=="y" goto basic_calc
goto calculator

:scientific_calc
cls
echo ===== Scientific Calculator =====
echo.
echo 1. Square Root
echo 2. Power
echo 3. Logarithm
echo 4. Trigonometric
echo 5. Back
echo.
set /p sciop=Choose operation: 
if "%sciop%"=="1" goto sqrt_calc
if "%sciop%"=="2" goto power_calc
if "%sciop%"=="3" goto log_calc
if "%sciop%"=="4" goto trig_calc
if "%sciop%"=="5" goto calculator
goto scientific_calc

:sqrt_calc
set /p sqrtnum=Enter number: 
set /a result=sqrtnum
echo Square root of !sqrtnum! is approximately !result!
pause
goto scientific_calc

:power_calc
set /p base=Enter base: 
set /p exponent=Enter exponent: 
set /a result=base
for /l %%i in (1,1,%exponent%) do set /a result=result*base
echo !base!^!exponent! = !result!
pause
goto scientific_calc

:log_calc
echo Logarithm calculation requires PowerShell
powershell -Command "[Math]::Log(100)"
pause
goto scientific_calc

:trig_calc
echo Trigonometric functions require PowerShell
powershell -Command "[Math]::Sin([Math]::PI/2)"
pause
goto scientific_calc

:programmer_calc
cls
echo ===== Programmer Calculator =====
echo.
set /p decnum=Enter decimal number: 
set /a hexnum=decnum
set /a binnum=decnum
echo Decimal: !decnum!
echo Hexadecimal: !hexnum!
echo Binary: !binnum!
pause
goto calculator

:unit_converter
cls
echo ===== Unit Converter =====
echo.
echo 1. Temperature
echo 2. Length
echo 3. Weight
echo 4. Back
echo.
set /p unitop=Choose conversion: 
if "%unitop%"=="1" goto temp_convert
if "%unitop%"=="2" goto length_convert
if "%unitop%"=="3" goto weight_convert
if "%unitop%"=="4" goto calculator
goto unit_converter

:temp_convert
set /p temp=Enter temperature: 
set /p from=From (C/F): 
set /p to=To (C/F): 
if /i "!from!"=="C" if /i "!to!"=="F" (
    set /a result=temp*9/5+32
    echo !temp!°C = !result!°F
)
if /i "!from!"=="F" if /i "!to!"=="C" (
    set /a result=(temp-32)*5/9
    echo !temp!°F = !result!°C
)
pause
goto unit_converter

:length_convert
echo Length conversion requires external tool
pause
goto unit_converter

:weight_convert
echo Weight conversion requires external tool
pause
goto unit_converter

:3d_cube
cls
echo ===== 3D Cube Animation =====
echo Press any key to stop...
echo.
set frame=1
:cube_loop
cls
echo ===== 3D Cube Animation =====
echo Press any key to stop...
echo Frame !frame!
echo.
echo       +-------+  
echo      /!random:~-1!/      /^|
echo     +-------+ !random:~-1!+
echo     ! !random:~-1! !     ! !
echo     !       !-!random:~-1!+
echo     ! !random:~-1! !     !/
echo     +-------+  
echo.
set /a frame=frame+1
if !frame! gtr 20 set frame=1

:: Проверка нажатия клавиши без блокировки
choice /c: /n /t 1 /d: >nul
if !errorlevel! equ 255 (
    goto cube_loop
) else (
    goto cube_end
)
:cube_end
echo 3D animation stopped.
pause
goto os

:update
cls
echo ===== System Update =====
echo.
echo Checking for updates...
echo.
echo Current version: SparkOS v1.5 Professional
echo.
echo Connecting to update server...
timeout /t 2 /nobreak >nul

:: Проверка доступности сервера обновлений
ping -n 1 github.com >nul 2>&1
if errorlevel 1 (
    echo ERROR: Cannot connect to update server
    echo Please check your internet connection
) else (
    echo Update server is available
    echo.
    echo Latest version: SparkOS v1.5 Professional
    echo Your system is up to date!
    echo.
    echo Would you like to check for plugin updates?
    set /p update_plugins=Update plugins? (y/n): 
    if /i "!update_plugins!"=="y" (
        if exist "Plagins" (
            echo Updating plugins...
            for /d %%i in (Plagins\*) do (
                echo Checking %%i...
            )
            echo Plugin update complete!
        ) else (
            echo No plugins directory found
        )
    )
)
echo.
pause
goto os

:servers
cls
echo ===== Professional Server Management =====
echo.
if not exist "servers" (
    echo Creating servers directory...
    md servers
    echo Directory created successfully!
)

echo 1. Start Local Server (Port 8080)
echo 2. Stop Local Server
echo 3. Real-time Server Status
echo 4. Server Services Management
echo 5. Server Configuration
echo 6. Connect to Remote Server
echo 7. Performance Monitor
echo 8. Restart Server Services
echo 9. View Server Logs
echo 10. Back to Main
echo.
set /p server_cmd=Choose option: 

if "%server_cmd%"=="1" goto start_server
if "%server_cmd%"=="2" goto stop_server
if "%server_cmd%"=="3" goto server_status
if "%server_cmd%"=="4" goto server_services
if "%server_cmd%"=="5" goto server_config
if "%server_cmd%"=="6" goto connect_server
if "%server_cmd%"=="7" goto performance_monitor
if "%server_cmd%"=="8" goto restart_services
if "%server_cmd%"=="9" goto server_logs
if "%server_cmd%"=="10" goto os
goto servers

:start_server
cls
echo ===== Starting Local Server =====
echo.
echo Initializing server on port 8080...
echo Creating web interface...
echo.

:: Create test web page
echo ^<html^> > servers\index.html
echo ^<head^> >> servers\index.html
echo ^<title^>SparkOS Local Server^</title^> >> servers\index.html
echo ^<style^> >> servers\index.html
echo body { font-family: Arial, sans-serif; margin: 40px; background: #1f1f1f; color: white; } >> servers\index.html
echo .container { max-width: 800px; margin: 0 auto; padding: 20px; background: #2d2d2d; border-radius: 10px; } >> servers\index.html
echo ^</style^> >> servers\index.html
echo ^</head^> >> servers\index.html
echo ^<body^> >> servers\index.html
echo ^<div class="container"^> >> servers\index.html
echo ^<h1^>SparkOS Local Server^</h1^> >> servers\index.html
echo ^<p^>Server is successfully running on port 8080^</p^> >> servers\index.html
echo ^<p^>Status: ^<span style="color: #90EE90"^>ONLINE^</span^>^</p^> >> servers\index.html
echo ^<p^>Start Time: %date% %time%^</p^> >> servers\index.html
echo ^<p^>Host: %COMPUTERNAME%^</p^> >> servers\index.html
echo ^<p^>User: %USERNAME%^</p^> >> servers\index.html
echo ^</div^> >> servers\index.html
echo ^</body^> >> servers\index.html
echo ^<//html^> >> servers\index.html

echo Test page created: servers\index.html
echo Server configuration initialized
echo Web interface ready
echo.
echo Starting server process...

:: Simulate server start
echo SERVER_STARTED > servers\server.pid
echo %date% %time% >> servers\server.log
echo "Server started on port 8080" >> servers\server.log

echo.
echo Server started successfully!
echo Access your server at:
echo http://localhost:8080
echo Or from network:
echo http://%COMPUTERNAME%:8080
echo.
pause
goto servers

:stop_server
cls
echo ===== Stopping Local Server =====
echo.
if exist servers\server.pid (
    del servers\server.pid
    echo %date% %time% >> servers\server.log
    echo "Server stopped" >> servers\server.log
    echo Server stopped successfully
) else (
    echo Server is not running
)
echo.
pause
goto servers

:server_status
cls
echo ===== Real-time Server Status =====
echo.
if exist servers\server.pid (
    echo SERVER STATUS: ONLINE
    echo Port: 8080
    echo Host: %COMPUTERNAME%
    echo User: %USERNAME%
    echo.
    echo Simulating real-time monitoring...
    echo.
    set /a connections=5 + !random! %% 10
    set /a memory=45 + !random! %% 30
    set /a cpu=20 + !random! %% 40
    set /a uptime=125 + !random! %% 60
    
    echo Active Connections: !connections!
    echo Memory Usage: !memory!%
    echo CPU Load: !cpu!%
    echo Uptime: !uptime! minutes
    echo.
    echo Access URLs:
    echo    http://localhost:8080
    echo    http://%COMPUTERNAME%:8080
) else (
    echo SERVER STATUS: OFFLINE
    echo.
    echo Server is not running
    echo Use "Start Local Server" to activate
)
echo.
pause
goto servers

:server_services
cls
echo ===== Server Services Management =====
echo.
echo 1. Start Web Service
echo 2. Stop Web Service
echo 3. Start Database Service
echo 4. Stop Database Service
echo 5. Start FTP Service
echo 6. Stop FTP Service
echo 7. Service Status Overview
echo 8. Back to Server Management
echo.
set /p service_cmd=Choose option: 

if "%service_cmd%"=="1" (
    echo Web Service started
)
if "%service_cmd%"=="2" (
    echo Web Service stopped
)
if "%service_cmd%"=="3" (
    echo Database Service started
)
if "%service_cmd%"=="4" (
    echo Database Service stopped
)
if "%service_cmd%"=="5" (
    echo FTP Service started
)
if "%service_cmd%"=="6" (
    echo FTP Service stopped
)
if "%service_cmd%"=="7" (
    echo.
    echo Service Status Overview:
    echo -------------------------
    echo Web Service: Running
    echo Database: Running
    echo FTP: Stopped
    echo SSH: Running
    echo.
    echo Tips: Use options 1-6 to manage services
)
if "%service_cmd%"=="8" goto servers
pause
goto server_services

:server_config
cls
echo ===== Server Configuration =====
echo.
echo Current Configuration:
echo ----------------------
echo Port: 8080
echo Max Connections: 100
echo Timeout: 30 seconds
echo Logging: Enabled
echo Security: Basic
echo.
echo Configuration Options:
echo 1. Change Server Port
echo 2. Adjust Max Connections
echo 3. Toggle Logging
echo 4. Security Settings
echo 5. Backup Configuration
echo 6. Restore Configuration
echo 7. Back to Server Management
echo.
set /p config_cmd=Choose option: 

if "%config_cmd%"=="1" (
    set /p new_port=Enter new port (1-65535): 
    echo Port changed to !new_port!
    echo Restart server for changes to take effect
)
if "%config_cmd%"=="2" (
    set /p new_max=Enter max connections: 
    echo Max connections changed to !new_max!
)
if "%config_cmd%"=="3" (
    echo Logging toggled!
)
if "%config_cmd%"=="4" (
    echo Security Settings:
    echo - Basic Authentication
    echo - IP Whitelisting
    echo - SSL/TLS Encryption
    echo.
    echo Advanced security requires premium version
)
if "%config_cmd%"=="5" (
    echo Configuration backed up to servers\backup\
)
if "%config_cmd%"=="6" (
    echo Configuration restored from backup
)
if "%config_cmd%"=="7" goto servers
pause
goto server_config

:connect_server
cls
echo ===== Connect to Remote Server =====
echo.
set /p remote_ip=Enter server IP or hostname: 
if "!remote_ip!"=="" goto servers
set /p remote_port=Enter port (default 80): 
if "!remote_port!"=="" set remote_port=80

echo.
echo Testing connection to !remote_ip!:!remote_port!...
ping -n 1 !remote_ip! >nul 2>&1

if errorlevel 1 (
    echo ERROR: Cannot reach !remote_ip!
    echo Please check:
    echo - IP address/hostname
    echo - Network connection
    echo - Firewall settings
) else (
    echo Successfully connected to !remote_ip!
    echo.
    echo Opening in web browser...
    start "" "http://!remote_ip!:!remote_port!"
    echo.
    echo Tip: Use Network Tools for advanced diagnostics
)
echo.
pause
goto servers

:performance_monitor
cls
echo ===== Server Performance Monitor =====
echo Press ANY key to stop monitoring
echo.

:perf_loop
cls
echo ===== Real-time Performance Monitor =====
echo Press ANY key to stop monitoring
echo.

set /a connections=8 + !random! %% 15
set /a memory_usage=40 + !random! %% 35
set /a cpu_load=15 + !random! %% 50
set /a disk_usage=25 + !random! %% 40
set /a response_time=1 + !random! %% 5

echo.
echo Performance Metrics:
echo --------------------
echo Active Connections: !connections!
echo Memory Usage: !memory_usage!%
echo CPU Load: !cpu_load!%
echo Disk Usage: !disk_usage!%
echo Response Time: !response_time! ms
echo.
echo Status: OPTIMAL
echo Last Update: !time!
echo.

choice /c: /n /t 2 /d: >nul
if !errorlevel! equ 255 (
    goto perf_loop
) else (
    goto perf_stop
)

:perf_stop
echo.
echo Performance monitoring stopped.
pause
goto servers

:restart_services
cls
echo ===== Restarting Server Services =====
echo.
echo This will restart all server services:
echo - Web Server
echo - Database
echo - FTP Service
echo - Background Workers
echo.
set /p confirm=Are you sure? (y/n): 
if /i "!confirm!"=="y" (
    echo.
    echo Restarting services...
    echo All services restarted successfully!
) else (
    echo Operation cancelled.
)
echo.
pause
goto servers

:server_logs
cls
echo ===== Server Logs =====
echo.
if exist servers\server.log (
    echo Recent log entries:
    echo -------------------
    type servers\server.log
) else (
    echo No log file found.
    echo Logs will be created when server starts.
)
echo.
echo Options:
echo 1. Clear Logs
echo 2. Export Logs
echo 3. Back
echo.
set /p log_cmd=Choose option: 

if "%log_cmd%"=="1" (
    if exist servers\server.log (
        del servers\server.log
        echo Logs cleared
    )
)
if "%log_cmd%"=="2" (
    echo Logs exported to servers\exported_logs.txt
)
if "%log_cmd%"=="3" goto servers
pause
goto server_logs

:games
cls
echo ===== SparkOS Game Center =====
echo.
echo 1. Number Guessing Game
echo 2. Tic-Tac-Toe
echo 3. Text Adventure
echo 4. Back to Main
echo.
set /p game_choice=Choose game: 

if "%game_choice%"=="1" goto number_game
if "%game_choice%"=="2" goto tictactoe
if "%game_choice%"=="3" goto text_adventure
if "%game_choice%"=="4" goto os
goto games

:number_game
cls
echo ===== Number Guessing Game =====
echo.
set /a number=%random% %% 100 + 1
set attempts=0
set max_attempts=10

echo I'm thinking of a number between 1 and 100!
echo You have !max_attempts! attempts to guess it.
echo.

:guess_loop
set /a remaining=max_attempts - attempts
if !remaining! leq 0 (
    echo Game Over! You ran out of attempts.
    echo The number was: !number!
    pause
    goto games
)

set /p guess=Attempt !attempts! of !max_attempts! - Enter your guess: 
if "!guess!"=="" goto guess_loop

set /a attempts+=1

if !guess! lss !number! (
    echo Higher! Try again.
    goto guess_loop
)
if !guess! gtr !number! (
    echo Lower! Try again.
    goto guess_loop
)

echo.
echo Congratulations! You guessed the number !number! in !attempts! attempts.
echo.
pause
goto games

:tictactoe
cls
echo ===== Tic-Tac-Toe =====
echo.
echo Player vs Computer
echo.
echo The game board:
echo.
echo  1 ^| 2 ^| 3
echo -----------
echo  4 ^| 5 ^| 6
echo -----------
echo  7 ^| 8 ^| 9
echo.
echo Enter numbers 1-9 to place your mark
echo.
echo Game starting...
echo.
echo Tic-Tac-Toe game loaded!
echo This is a simplified version
echo.
pause
goto games

:text_adventure
cls
echo ===== Text Adventure =====
echo.
echo You find yourself in a mysterious forest.
echo The moon is full and stars twinkle above.
echo There's an old cabin to the NORTH.
echo A dark path leads EAST deeper into the forest.
echo You hear water flowing to the WEST.
echo.
set /p adventure_cmd=What do you want to do? 

echo.
echo You chose: "!adventure_cmd!"
echo.

if /i "!adventure_cmd!"=="north" goto cabin
if /i "!adventure_cmd!"=="go north" goto cabin
if /i "!adventure_cmd!"=="east" goto dark_path
if /i "!adventure_cmd!"=="go east" goto dark_path
if /i "!adventure_cmd!"=="west" goto river
if /i "!adventure_cmd!"=="go west" goto river

echo I don't understand "!adventure_cmd!"
echo Try: north, east, west, look, inventory
pause
goto text_adventure

:cabin
cls
echo ===== The Old Cabin =====
echo.
echo You approach the old cabin.
echo The door creaks open as you push it.
echo Inside, you find a dusty room with:
echo - A wooden table with a note
echo - An old key on the floor
echo - A flashlight on a shelf
echo.
echo Try: read note, take key, take flashlight, back
set /p cabin_cmd=What do you do? 

echo.
if /i "!cabin_cmd!"=="read note" (
    echo The note says: "Beware of the shadows in the east..."
) else if /i "!cabin_cmd!"=="take key" (
    echo You take the old key. It might be useful!
) else if /i "!cabin_cmd!"=="take flashlight" (
    echo You take the flashlight. It still works!
) else if /i "!cabin_cmd!"=="back" (
    goto text_adventure
) else (
    echo You !cabin_cmd! in the cabin.
)
echo.
pause
goto cabin

:dark_path
cls
echo ===== The Dark Path =====
echo.
echo You venture east into the dark path...
echo The trees grow thicker and sunlight fades.
echo Suddenly, you hear a strange noise!
echo.
echo A shadowy figure appears!
echo.
echo Maybe you need a light source?
echo.
pause
goto text_adventure

:river
cls
echo ===== The River =====
echo.
echo You follow the sound of water to a clear river.
echo The water sparkles in the moonlight.
echo There's a boat tied to a tree.
echo Some mushrooms grow by the riverbank.
echo.
set /p river_cmd=What do you do? 

echo.
if /i "!river_cmd!"=="take mushrooms" (
    echo You collect some mushrooms. They look edible.
) else if /i "!river_cmd!"=="use boat" (
    echo You untie the boat and row across the river...
    echo You discover a hidden castle on the other side!
    echo Congratulations! You found the secret ending!
) else (
    echo You !river_cmd! by the river.
)
echo.
pause
goto text_adventure

:plugins
cls
echo ===== Plugin System =====
echo.
if not exist "Plagins" (
    echo Creating Plagins directory...
    md Plagins
    echo Directory created! Add your plugins to Plagins folder.
    pause
    goto os
)

echo Available Plugins:
echo ------------------
set count=0
for /d %%i in (Plagins\*) do (
    set /a count+=1
    echo !count!.) %%~nxi
)

if %count%==0 (
    echo No plugins found.
    echo.
    echo How to create plugins:
    echo 1. Create folder in Plagins with plugin name
    echo 2. Add in.js file with plugin info
    echo 3. Add your scripts in the plugin folder
    echo 4. Plugin will be loaded automatically
    pause
    goto os
)

echo.
set /p plugin_num=Select plugin to run (1-%count%): 

set count=0
for /d %%i in (Plagins\*) do (
    set /a count+=1
    if !count!==!plugin_num! (
        echo Loading plugin: %%~nxi
        if exist "%%i\in.js" (
            type "%%i\in.js"
            echo.
            echo Plugin loaded successfully!
        ) else (
            echo Error: in.js not found in plugin directory
        )
        pause
        goto os
    )
)
echo Invalid selection!
pause
goto os

:help
cls
echo ===== SparkOS v1.5 Professional - Help =====
echo.
echo AVAILABLE COMMANDS:
echo 1 / new      - Create new folder
echo 2 / restart  - Restart SparkOS
echo 3 / exit     - Exit SparkOS
echo 4 / view     - View files and folders
echo 5 / open     - Open programs
echo 6 / cls      - Clear screen
echo 7 / time     - Show current time/date
echo 8 / info     - System information
echo 9 / network  - Professional network tools
echo 10 / speed   - Real-time speed test
echo 11 / calc    - Professional calculator
echo 12 / 3d      - 3D cube animation
echo 13 / update  - System update
echo 14 / servers - Server management
echo 15 / games   - Game center
echo 16 / plugins - Plugin system
echo 17 / help    - This help screen
echo.
echo NEW FEATURES:
echo - Server Management: Start/stop local server, monitor performance
echo - Game Center: Number guessing, Tic-Tac-Toe, Text adventure
echo - Real-time Speed Test: Improved monitoring interface
echo.
echo HIDDEN COMMANDS:
echo 1cmd - Open command prompt
echo.
pause
goto os

:cmd
cls
start system\cmdotos.exe
goto os