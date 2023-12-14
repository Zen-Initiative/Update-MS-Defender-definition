@echo on
:: Last update: 13 Dec 2023 10:10:00
:: Temporary workaround for network error "Protection definition update failed" (Error code 80070102: The wait operation timed out) that prevents MS Defender security intelligence definition from being downloaded.

:: Create and change to the "Downloads\MS_Defender" folder
mkdir "%USERPROFILE%\Downloads\MS_Defender"
cd "%USERPROFILE%\Downloads\MS_Defender"

:: Download the latest MS Defender security intelligence difinition update for x64 machines
:: See https://www.microsoft.com/en-us/wdsi/defenderupdates
curl -L "https://go.microsoft.com/fwlink/?LinkID=121721&arch=x64" > mpam-fe.exe

:: Install the update
mpam-fe.exe

:: Check and log new MS Defender status; grab and log new security intelligence difinition version
echo %date:~7,2%/%date:~4,2%/%date:~10% %time:~0,2%:%time:~3,2%:%time:~6,2% > MP_Status.log & powershell.exe -Command Get-MpComputerStatus >> MP_Status.log
echo %date:~7,2%/%date:~4,2%/%date:~10% %time:~0,2%:%time:~3,2%:%time:~6,2% >> MP_updates.log & findstr /C:"AntivirusSignatureVersion" MP_Status.log >> MP_updates.log & echo. >> MP_updates.log

:: Show the log file and quit cmd
start MP_updates.log
