文中，我們只用一個工具逆向，[radare2](http://rada.re/r/)。

```bash
# 將 apk 解壓縮至 dex 資料夾
$ unzip app-release.apk -d dex 

# 進入 dex 資料夾
$ cd dex

# 用 radare2 開始分析
# -A: run 'aaa' command to analyze all referenced code
# -a [arch]: set asm.arch
$ radare2 -Aa dalvik classes.dex

# 定位 MainActivity 中的 onCreate()
$ ic~MainActivity~onCreate
0x0017c99c method 1 r    Lcom/example/test/re_simple/MainActivity.method.onCreate(Landroid/os/Bundle;)V

# 跳到記憶體位置
$ s 0x0017c99c

# 印出 onCreate() 的 dalvik opcode
$ pdf

[0x0017c99c]> pdf
            ;-- entry10:
            ;-- method.protected.Lcom_example_test_re_simple_MainActivity.Lcom_example_test_re_simple_MainActivity.method.onCreate_Landroid_os_Bundle__V:
/ (fcn) sym.Lcom_example_test_re_simple_MainActivity.method.onCreate_Landroid_os_Bundle__V 20
|   sym.Lcom_example_test_re_simple_MainActivity.method.onCreate_Landroid_os_Bundle__V ();
|           0x0017c99c      6f20e72b2100   invoke-super {v1, v2}, Landroid/support/v7/app/AppCompatActivity.onCreate(Landroid/os/Bundle;)V ; aav.0x00002be7 ; MainActivity.java:10 ; sym.Landroid_support_v7_app_AppCompatActivity.method.onCreate_Landroid_os_Bundle__V
|           0x0017c9a2      14001b00097f   const v0, 0x7f09001b
|           0x0017c9a8      6e20dd410100   invoke-virtual {v1, v0}, Lcom/example/test/re_simple/MainActivity.setContentView(I)V ; aav.0x000041dd
\           0x0017c9ae      0e00           return-void

# 忽略一切註解。先專注看 opcode
0x0017c99c      6f20e72b2100   invoke-super {v1, v2}, Landroid/support/v7/app/AppCompatActivity.onCreate(Landroid/os/Bundle;)V ; aav.0x00002be7
0x0017c9a2      14001b00097f   const v0, 0x7f09001b
0x0017c9a8      6e20dd410100   invoke-virtual {v1, v0}, Lcom/example/test/re_simple/MainActivity.setContentView(I)V ; aav.0x000041dd
0x0017c9ae      0e00           return-void
```
