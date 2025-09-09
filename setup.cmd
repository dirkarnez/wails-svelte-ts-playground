@echo off

set PREFIX=%USERPROFILE%\Downloads

set SEVENZIP=C:\"Program Files"\7-Zip\7z.exe

set GOPATH=%PREFIX%\gopath
set GOROOT=%PREFIX%\go1.25.0.windows-amd64\go
set GOBIN=%GOROOT%\bin
set GOEXE=%GOBIN%\go.exe

set NODEROOT=%PREFIX%\node-v22.14.0-win-x64\node-v22.14.0-win-x64
set NODEEXE=%NODEROOT%\node.exe


if not exist %GOEXE% (
cd /d "%TEMP%" &&^
%SystemRoot%\System32\curl.exe "https://go.dev/dl/go1.25.0.windows-amd64.zip" -L -O  &&^
%SEVENZIP% x go1.25.0.windows-amd64.zip -o"%PREFIX%\go1.25.0.windows-amd64"  &&^
del go1.25.0.windows-amd64.zip
) else (
    echo %GOEXE% is found
)

if not exist %NODEEXE% (
cd /d "%TEMP%" &&^
%SystemRoot%\System32\curl.exe "https://nodejs.org/dist/v22.14.0/node-v22.14.0-win-x64.zip" -L -O  &&^
%SEVENZIP% x node-v22.14.0-win-x64.zip -o"%PREFIX%\node-v22.14.0-win-x64"  &&^
del node-v22.14.0-win-x64.zip
) else (
    echo %NODEEXE% is found
)

set PATH=^
%PREFIX%\PortableGit\bin;^
%GOBIN%;^
%NODEROOT%;

go install github.com/wailsapp/wails/v2/cmd/wails@latest
wails version

cd /d "%~dp0"
echo done

