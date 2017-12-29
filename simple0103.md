每個 app 執行後，會先從 AndroidManifest.xml 中找尋 main activity，這就會是我們的切入點。而在此 app 中，我們的 main activity 就是 MainActivity.java 這支程式。

因此，我們先來看 MainActivity.java。

```java
package com.example.test.re_simple;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
```

```package com.example.test.re_simple;```

* 表示 MainActivity.java 會在 com/example/test/re_simple 資料夾結構下。

```import android.support.v7.app.AppCompatActivity;```

* MainActivity 繼承函式 ```onCreate()```、```setContentView()``` 自 AppCompatActivity 類別。

```import android.os.Bundle;```

* 餵參數給 onCreate() 時會用到。依據[官方手冊](https://developer.android.com/guide/components/activities/activity-lifecycle.html)定義：This method receives the parameter savedInstanceState, which is a Bundle object containing the activity's previously saved state. If the activity has never existed before, the value of the Bundle object is null. 

```public class MainActivity extends AppCompatActivity ```

* 宣告 public class MainActivity，特性繼承自 AppCompatActivity。

```@Override```

* 重新定義 onCreate()

```protected void onCreate(Bundle savedInstanceState)```

* 新定義的 onCreate()，回傳為 void。

```super.onCreate(savedInstanceState);```

* 呼叫 AppCompatActivity 定義的 onCreate() 以處理 savedInstanceState

```setContentView(R.layout.activity_main);```

* 設定初始畫面。```R.layout.activity_main``` 為欲設定之內容。
