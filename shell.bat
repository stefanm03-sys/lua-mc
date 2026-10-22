@echo off
echo "Hello, user! Welcome to LuaMcBackup."
time /t
date /t
echo "Type Y to start backing up your Minecraft Java folder. Type N to cancel."

choice /C YN /M "Start Backup?"
if errorlevel 2 (
    echo "Alright!"
    echo "Have any feedback? Head to the Repository and leave some suggestions!"
    EXIT
    
) else (
    echo "Using Lua.."
    lua locate.lua
)

echo "No worries!"
choice /c YN /M "Download from Git instead?"
if errorlevel 2 (
    echo "Okay!"
    EXIT
) else (
    
)