@echo off
Set DelFiles= *.log *.pdb *.bak

echo #ーーーYーーー

del %DelFiles% /s /a- /q /f

echo #rmdir ーーーーー bin obj

rmdir /s/q packages

FOR /F "usebackq" %%i IN (`dir /s obj /b`) DO rmdir "%%i" /s /q
pause