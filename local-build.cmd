@echo off

set PREFIX=%USERPROFILE%\Downloads

set GOPATH=%PREFIX%\gopath
set GOROOT=%PREFIX%\go1.25.0.windows-amd64\go
set GOBIN=%GOROOT%\bin
set GOEXE=%GOBIN%\go.exe


set NODEROOT=%PREFIX%\node-v22.14.0-win-x64\node-v22.14.0-win-x64
set NODEEXE=%NODEROOT%\node.exe

set PATH=^
%PREFIX%\PortableGit\bin;^
%GOBIN%;^
%NODEROOT%;

cd myproject &&^
wails build &&^
cd /d "%~dp0"
echo done
