### - 0105 - Apk 自寫自逆 - Dalvik Bytecode


進入好戲前，我們先了解逆向看的是哪種 code。

![code_proces](code_process.png)

上圖為參考不同資料後，自己推導、組合之結果。

(1) 首先，Apk 開發者以 Java source code 撰寫 App，隨後透過 Java Compiler 將程式碼轉為 jar 檔。(2) 接著透過 Dex Compiler 將 jar 檔轉為 dex 檔。(3) dex 檔為 dalvik bytecode。透過 dalvik 虛擬機器解讀，將 dalvik bytecode 翻譯為 machine code。processors 就可以直接讀 machine code，並依內容開始運算。

講解 (4) 之前，我們講解 assembler 與 disassember 概念。

* assembler: 將 codes 翻譯為「processor」讀得懂的 machine code。
* disassembler: 將 codes 翻譯為「人類」看得懂的 code。

因此，反組譯工具如 dex2jar + jd-gui 即是先使用 dex2jar 將 dex 檔轉為 jar 檔，再用 jd-gui 將 jar 檔內容翻譯成 Java source code。(4) 此外，也可使用 baksmali 將 dex 檔中的 dalvik bytecode 翻譯成 smali code。有此兩種反組譯道路。

此處，我們選擇的是將 dalvik bytecode 翻譯成 smali code 這條路。


我們專注看的是 Opcodes (Dalvik Bytecode) + Smali Code。Why? 因為這就是 radare2 呈現出來的結果。

上圖建構所參考之文獻：

1. [What is smali code android](https://stackoverflow.com/questions/30837450/what-is-smali-code-android)
2. [Programming with Android - System Architecture - page 15](https://www.slideshare.net/uT916/android-architecture-and-additional-components)
3. [Smali](https://github.com/JesusFreke/smali)
4. [Dalvik Bytecodes](https://source.android.com/devices/tech/dalvik/dalvik-bytecode)
