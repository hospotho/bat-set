::move all file in current working directory to top folder
::folder                        folder
::  move.bat                        move.bat
::  subfolder1                      file1.jpg
::      file1.jpg       ===>        file2.txt
::      file2.txt                   file3.jpg
::  subfolder2                      subfolder1
::      file3.jpg                   subfolder2
@echo off
for /F %%i in ('dir /a-d /b /on /s') do move %%i %~dp0>nul
PAUSE