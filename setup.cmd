@echo off

set PREFIX=%USERPROFILE%\Downloads

set SEVENZIP=C:\"Program Files"\7-Zip\7z.exe
set GO_BIN=%PREFIX%\go1.25.0.windows-amd64\go\bin
set GO_EXE=%GO_BIN%\go.exe

set NODE_ROOT=%PREFIX%\node-v22.14.0-win-x64\node-v22.14.0-win-x64
set NODE_EXE=%NODE_ROOT%\node.exe


if not exist %GO_EXE% (
cd /d "%TEMP%" &&^
%SystemRoot%\System32\curl.exe "https://go.dev/dl/go1.25.0.windows-amd64.zip" -L -O  &&^
%SEVENZIP% x go1.25.0.windows-amd64.zip -o"%PREFIX%\go1.25.0.windows-amd64"  &&^
del go1.25.0.windows-amd64.zip
)

if not exist %NODE_EXE% (
cd /d "%TEMP%" &&^
%SystemRoot%\System32\curl.exe "https://nodejs.org/dist/v22.14.0/node-v22.14.0-win-x64.zip" -L -O  &&^
%SEVENZIP% x node-v22.14.0-win-x64.zip -o"%PREFIX%\node-v22.14.0-win-x64"  &&^
del node-v22.14.0-win-x64.zip
)

echo done




