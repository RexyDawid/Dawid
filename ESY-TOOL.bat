@echo off
color a
:mainMenu
cls
echo                                              ==========================
echo                                              ==========================
echo                                                     ESY-OS.TOOL            
echo                                              ==========================
echo                                              ==========================
echo.
echo                   _________________________________________________________________________________________
echo                   =========================================================================================
echo                                                --//1. Open Google //-- 
echo                   =========================================================================================
echo                                                --//2. Show my Pc //-- 
echo                   =========================================================================================
echo                                                 --//3. Settings //-- 
echo                   =========================================================================================
echo                                                  --///4. Exit ///-- 
echo                   =========================================================================================
echo                   _________________________________________________________________________________________
echo.
set /p choice=             ///       Select Option....

if %choice%==1 (
    start https://www.google.com
    goto mainMenu
)

if %choice%==2 (
    systeminfo
    pause
    goto mainMenu
)

if %choice%==3 (
    echo ======================       -///
    echo ======================     -///
    echo        Settings          -///
    echo ====================== -///
    echo 1. Change Color
    echo 2. Back to Menu
    set /p Settings= Select Option.....:
    
    if %Settings%==1 (
        echo Choose a color:
        echo 1. Green
        echo 2. Red
        echo 3. Blue
        echo 4. Yellow
        set /p colorChoice= Select Color:
        
        if %colorChoice%==1 (
            color 0a  REM green
        )
        if %colorChoice%==2 (
            color 0c  REM red
        )
        if %colorChoice%==3 (
            color 09  REM blue
        )
        if %colorChoice%==4 (
            color 0e  REM yellow
        )
        goto mainMenu
    )
    
    if %Settings%==2 (
        goto mainMenu
    )

    echo Invalid option, try again.
    pause
    goto mainMenu
)

if %choice%==4 (
    exit
)

echo Invalid option, try again.
pause
goto mainMenu
