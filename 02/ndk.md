### Native Development Kit (NDK)

```
2018/05/08

ref: https://developer.android.com/ndk/guides/build

NDK 主要目的：build C and C++ source code 到 shared libary 中，使得 App 可以使用。

此部分解釋如何 build native binaries 在 android app 中。
以解釋 Android.mk 檔及 Application.mk 檔為開頭。

Android.mk:       which defines properties specific to individual modules, or libraries. 
                  (特定的，module, library)
Application.mk:   which defines properties for all the modules that you use in your app.
                  (all, modules use in the app)
```
