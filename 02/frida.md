### frida

```
1. download frida-server
2. follow instructions like https://www.frida.re/docs/android/ and 
   https://github.com/dpnishant/appmon/wiki/5.a-Setup-on-Android-%5BRooted%5D
3. failed at $ adb shell "/data/local/tmp/frida-server &"
4. error msg: /system/bin/sh: /data/local/tmp/frida-server: No such file or directory
5. 疑似 /system/bin/sh 沒檔案。
6. Install frida on genymotion: https://www.youtube.com/watch?v=wJkn9AcK4l4
7. android 6.0 似乎就裝進去了 (didn't work out)
```


```
2018/04/27

Parktsai 大大 frida 文
https://github.com/parkmftsai/Reverse-apk-research/blob/master/learning_reverse_apk_record.md

決定來試一下
https://www.codemetrix.net/hacking-android-apps-with-frida-1/

frida-server binary 要挑 frida-server-10.7.7-android-x86
先前錯誤是因為 cpu 架構挑錯了。
```
