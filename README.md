wails-svelte-ts-playground
==========================
> Wails requires that the WebView2 runtime is installed. Some Windows installations will already have this installed. You can check using the wails doctor command.

### Notes
- Use [wailsapp/xgo: Cross compilation docker image for Wails](https://github.com/wailsapp/xgo)
- try frameless
  - ```go
    wails.Run(&options.App{
  		Frameless: true,
  		Windows: &windows.Options{
  			WebviewIsTransparent:              false,
  			WindowIsTranslucent:               false,
  			Theme:                             windows.Theme(windows.Dark),
  			DisableFramelessWindowDecorations: true,
  		}
    )
    ```
### Svelte
```
wails init -n myproject -t svelte-ts
```

### Tutorials
- [git-jiadong/wechatDataBackup: 一键导出PC微信聊天记录工具](https://github.com/git-jiadong/wechatDataBackup)
  - https://github.com/git-jiadong/wechatDataBackup/blob/main/.github/workflows/publish.yml
    - ```yaml
      - name: Build wails
        uses: dAppServer/wails-build-action@main
        id: build
        with:
          build-name: ${{ matrix.build.name }}
          sign: false
          build-platform: ${{ matrix.build.platform }}
          package: true
          go-version: '1.21'
          wails-version: "v2.9.1"
      ```
- [driverbox/driver-box: Driver installer for sytem builders/admins](https://github.com/driverbox/driver-box)
  - https://github.com/driverbox/driver-box/blob/main/.github/workflows/build_and_release.yml
    - ```yaml
      - name: Download and extract WebView2 runtime
        run: |
          cd build\bin # myproject/build/bin
          curl -o webview2.cab -L https://github.com/westinyang/WebView2RuntimeArchive/releases/download/132.0.2957.140/Microsoft.WebView2.FixedVersionRuntime.132.0.2957.140.${{ "x86" or "x64" }}.cab
          mkdir bin
          expand -r webview2.cab -F:* bin
          move bin\Microsoft.WebView2.FixedVersionRuntime.* bin\WebView2
      ```
