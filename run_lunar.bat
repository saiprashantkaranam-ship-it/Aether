@echo off
title 🌙 LUNAR AI — Launching Engine
color 0D

echo.
echo  =============================================
2: echo   🌙  LUNAR AI — Starting Private Server
3: echo  =============================================
4: echo.
5: 
6: :: Check for Node.js
7: node -v >nul 2>&1
8: if %errorlevel% neq 0 (
9:     echo  [!] Error: Node.js is not installed.
10:     echo      Please install from: https://nodejs.org
11:     pause
12:     exit
13: )
14: 
15: :: Kill existing port if busy
16: echo  [1/3] Clearing ports...
17: if exist "kill_port.bat" call kill_port.bat >nul 2>&1
18: 
19: :: Start Localtunnel in a new window for the phone connection
20: echo  [2/3] Starting Global Link for phone (Localtunnel)...
21: :: We use npx to ensure it works without manual installation
22: start "Lunar Global Link" /min npx localtunnel --port 3000 --subdomain lunar-assistant-sai
23: 
24: echo.
25: echo  ---------------------------------------------
26: echo  📱 YOUR GLOBAL LINK:
27: echo     https://lunar-assistant-sai.loca.lt
28: echo  ---------------------------------------------
29: echo.
30: 
31: :: Start the Lunar Server
32: echo  [3/3] Launching Lunar Brain...
33: node server.js
34: 
35: pause
