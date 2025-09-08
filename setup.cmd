@echo off

set PREFIX=%USERPROFILE%\Downloads
set PATH=^

https://nodejs.org/dist/v22.14.0/node-v22.14.0-win-x64.zip
https://go.dev/dl/go1.25.0.windows-amd64.zip
go install github.com/wailsapp/wails/v2/cmd/wails@latest
