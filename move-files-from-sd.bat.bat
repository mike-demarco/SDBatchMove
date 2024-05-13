@echo off
setlocal enabledelayedexpansion

set "home_path=D:\pictures\birbs\%date:~10,4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%"

mkdir "!home_path!"

set "sd_path=H:\DCIM\"

if exist "!sd_path!" (
    xcopy /s /e "!sd_path!" "!home_path!"
	rmdir /s "!sd_path!"
) else (
    echo SD Card not found!
)

pause

endlocal
