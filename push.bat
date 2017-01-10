@echo off
set d=%date:~0,10%
set t=%time:~0,8%
set timestamp=%d% %t%

set /p comments=please input commit comments:

git status
git add .
git commit -m "%timestamp% backup from windows, comments: %comments%"
git push origin PyCTP_Dev
echo "Finished Push!"
pause