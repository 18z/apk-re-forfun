### - 0107 - Apk 自寫自逆 - 解讀 Dalvik Bytecode


開始解讀 opcode 之前，我們得先準備幾份參考資料。

1. [dalvik opcodes](http://pallergabor.uw.hu/androidblog/dalvik_opcodes.html)
2. [smali - Types Methods and Fields](https://github.com/JesusFreke/smali/wiki/TypesMethodsAndFields)
3. [smali - Registers](https://github.com/JesusFreke/smali/wiki/Registers)

```smali
invoke-super {v1, v2}, Landroid/support/v7/app/AppCompatActivity.onCreate(Landroid/os/Bundle;)V ; aav.0x00002be7
# super.onCreate(savedInstanceState);

# ; aav.0x00002be7 尚未知。
# pallergabor dalvik opcodes 定義：Invokes the virtual method of the immediate parent class.
# invoke-super {parameter},methodtocall
# 比較 pallergabor 定義，發現 pall 版本 method 接收之參數只有一個。而 radare2 反編譯結果參數為兩個。
# 推測可能因為反編譯工具不同導致。
# 此處我們推測 v1 可能為 "this" instance，真正參數為 v2 (savedInstanceState)

# Landroid/support/v7/app/AppCompatActivity
# L indicates that it is an object type
# android/support/v7/app/ is the package that the object is in
# AppCompatActivity is the name of the object

# .onCreate(Landroid/os/Bundle;)V
# 以下為自我推測 "." = "->"
# .onCreate()V 為 AppCompatActivity Object 中之 method
# 回傳值 V 為 void - can only be used for return types
# 傳 Bundle object 給 onCreate()
```

```
const v0, 0x7f09001b
# puts 0x7f09001b into v0
# 猜測這裡將 R.layout.activity_main 放入 v0
```

```
invoke-virtual {v1, v0}, Lcom/example/test/re_simple/MainActivity.setContentView(I)V ; aav.0x000041dd
# setContentView(R.layout.activity_main);

# ; aav.0x000041dd 尚未知。
# invoke-virtual { parameters }, methodtocall
# Invokes a virtual method with parameters.

# v1 為 "this" instance，真正參數為 v0
# 而 v0 已經在上一個 const 中被填入值了

# Lcom/example/test/re_simple/MainActivity
# L indicates that it is an object type
# com/example/test/re_simple/ is the package that the object is in
# MainActivity is the name of the object

# .setContentView(I)V
# setContentView()V 為 MainActivity 中之 method
# 回傳值 V 為 void - can only be used for return types
# I 表示 int，則可推測 R.layout.activity_main 型態為 int。

```

```
return-void
# 無回傳值
# protected void onCreate(Bundle savedInstanceState)
```
