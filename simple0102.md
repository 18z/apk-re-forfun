### - 0102 - Apk 自寫自逆 - 講解 Activity 運行流程

在真正開始進入主題前，我們先了解每個 activity 執行後，會有哪些流程。

![activity_lifecycle](activity_lifecycle.png)

從上圖，可看到 activity 在 launched 後，首先會執行的是 onCreate() 函式。在此，我們只需知道這點就好。由於此處，我們的 app 非常簡單，因此不會有其他的函式。