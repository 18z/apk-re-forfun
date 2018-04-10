### apktool

出現錯誤訊息

```
$ apktool d ifonly.apk 
 10:03:50 up 17 min,  4 users,  load average: 0.01, 0.24, 0.53
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
dio      tty7     :0               09:47   17:00  18.35s  0.23s /sbin/upstart --user
dio      pts/19   tmux(2334).%0    09:47    6.00s  0.24s  0.00s /bin/bash /usr/bin/apktool d ifonly.apk
dio      pts/4    tmux(2334).%1    09:51   12:38   0.01s  0.01s -bash
dio      pts/20   tmux(2334).%2    09:52    7:58   0.05s  0.05s -bash
I: Using Apktool 2.0.2-dirty on ifonly.apk
I: Loading resource table...
I: Decoding AndroidManifest.xml with resources...
I: Loading resource table from file: /home/dio/apktool/framework/1.apk
W: Could not decode attr value, using undecoded value instead: ns=android, name=versionCode, value=0x00000001
I: Loading resource table from file: /home/dio/apktool/framework/1.apk
W: Could not decode attr value, using undecoded value instead: ns=android, name=versionName, value=0x0000000c
I: Loading resource table from file: /home/dio/apktool/framework/1.apk
W: Could not decode attr value, using undecoded value instead: ns=android, name=versionCode, value=0x00000001
I: Loading resource table from file: /home/dio/apktool/framework/1.apk
W: Could not decode attr value, using undecoded value instead: ns=android, name=versionName, value=0x0000000c
Exception in thread "main" java.lang.NullPointerException
        at java.io.Writer.write(Writer.java:157)
        at brut.androlib.res.util.ExtMXSerializer.writeAttributeValue(ExtMXSerializer.java:38)
        at org.xmlpull.mxp1_serializer.MXSerializer.attribute(MXSerializer.java:673)
        at org.xmlpull.v1.wrapper.classic.XmlSerializerDelegate.attribute(XmlSerializerDelegate.java:106)
        at org.xmlpull.v1.wrapper.classic.StaticXmlSerializerWrapper.writeStartTag(StaticXmlSerializerWrapper.java:267)
        at org.xmlpull.v1.wrapper.classic.StaticXmlSerializerWrapper.event(StaticXmlSerializerWrapper.java:211)
        at brut.androlib.res.decoder.XmlPullStreamDecoder$1.event(XmlPullStreamDecoder.java:83)
        at brut.androlib.res.decoder.XmlPullStreamDecoder.decode(XmlPullStreamDecoder.java:141)
        at brut.androlib.res.decoder.XmlPullStreamDecoder.decodeManifest(XmlPullStreamDecoder.java:153)
        at brut.androlib.res.decoder.ResFileDecoder.decodeManifest(ResFileDecoder.java:140)
        at brut.androlib.res.AndrolibResources.decodeManifestWithResources(AndrolibResources.java:199)
        at brut.androlib.Androlib.decodeManifestWithResources(Androlib.java:140)
        at brut.androlib.ApkDecoder.decode(ApkDecoder.java:100)
        at brut.apktool.Main.cmdDecode(Main.java:165)
        at brut.apktool.Main.main(Main.java:81)
```

此處 apktool 是 ubuntu apt-get 安裝的版本

```
Apktool v2.0.2-dirty - a tool for reengineering Android apk files
with smali v2.0.8-dev and baksmali v2.0.8-dev
Copyright 2014 Ryszard Wiśniewski <brut.alll@gmail.com>
Updated by Connor Tumbleson <connor.tumbleson@gmail.com>
```

猜測是因為版本太舊導致
