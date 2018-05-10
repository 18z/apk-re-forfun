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


```
2018/05/09

接著解釋如何使用 ndk-build 腳本。
最後，進階課題，如何 incorporate the NDK 到我們自己的 toolchain。如果我們不想用 ndk-build 的話。

看 https://blog.csdn.net/carson_ho/article/details/73250163

Android Studio 2.2 以上實現 NDK。感覺容易。

Generate Signed apk 時遇到版本 Resolve conflicts between the app and test APK 問題
https://developer.android.com/studio/test/?utm_source=android-studio#dependency_conflicts

後來是先更新 SDK 版本，接著修改 build.gradle，使得版本相同（這樣感覺有點不正規）
之後就成功 gen 出 NDK apk 了。

成功在模擬器上運作！
```

![ndk-simple-on-genymotion](ndk-simple.jpg)


```
2018/05/10

實驗：patch .so 檔
結果：失敗

實驗步驟：
1. 以 apktool d NDK-simple.apk 將 apk 解開
2. 以 r2 -w 修改 lib/arm64-v8a, armeabi-v7a, x86, x86_64 中的 libnative-lib.so 
   將內部字串 Hello from C++ 改成 HELLO FROM CPP
3. 以 apk-re-forfun 中的 repackage.sh 將改過的 .so 檔重新包裝
4. 將 apk 送進 genymotion 中運行，字串還是 Hello from C++，實驗失敗。
5. 試圖以 grep -r "Hello" . 在  NDK-simple 目錄下找尋，發現
   Binary file ./lib/x86_64/libnative-lib.so matches
   Binary file ./build/apk/res/layout/activity_main.xml matches
   Binary file ./build/apk/lib/x86_64/libnative-lib.so matches
   因此懷疑，可能有其他地方沒改到。
```
