@echo off

echo.

git >nul 2>nul

IF "%ERRORLEVEL%" == "9009" (
    echo git not found on path. Install git and run again.
    EXIT /b %ERRORLEVEL%
)

echo Pulling down Vundle...

git clone https://github.com/VundleVim/Vundle.vim.git %USERPROFILE%/.vim/bundle/Vundle.vim

echo.
echo Copying over .vimrc to %USERPROFILE%...

copy .vimrc %USERPROFILE%

echo.
echo Installing plugins...

REM vim +PluginInstall +qall

echo.
echo Complete
echo.


