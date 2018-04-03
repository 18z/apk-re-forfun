### patch

```
patch apk file 時
試圖用

w foobar             write string 'foobar'

發現無法 patch。
```

隨後試圖撰寫一簡單 ELF

```
參考 https://www.u235.io/single-post/2017/07/23/Simplistic-Binary-Patching-With-Radare2
```

撰寫 helloworld.c

```c
#include <stdio.h>

int main(){
  printf("hello, world\n");
  return 0;
}
```

```bash
gcc helloworld.c -o helloworld
```

```bash
[dio@dio-VirtualBox][re-env][0] $ ./helloworld 
hello, world
```

```bash
[dio@dio-VirtualBox][re-env][0] $ r2 -Aw helloworld
[x] Analyze all flags starting with sym. and entry0 (aa)
[x] Analyze len bytes of instructions for references (aar)
[x] Analyze function calls (aac)
[x] Use -AA or aaaa to perform additional experimental analysis.
[x] Constructing a function name for fcn.* and sym.func.* functions (aan)
 -- To debug a program, you can call r2 with 'dbg://<path-to-program>' or '-d <path..>'
[0x00400430]> 
```

```bash
[0x00400430]> iz
000 0x000005c4 0x004005c4  12  13 (.rodata) ascii hello, world
```

```bash
[0x00400430]> s 0x004005c4
[0x004005c4]>
```

```bash
[0x004005c4]> px
- offset -   0 1  2 3  4 5  6 7  8 9  A B  C D  E F  0123456789ABCDEF
0x004005c4  6865 6c6c 6f2c 2077 6f72 6c64 0000 0000  hello, world....
0x004005d4  011b 033b 3000 0000 0500 0000 1cfe ffff  ...;0...........
0x004005e4  7c00 0000 5cfe ffff 4c00 0000 52ff ffff  |...\...L...R...
0x004005f4  a400 0000 6cff ffff c400 0000 dcff ffff  ....l...........
0x00400604  0c01 0000 1400 0000 0000 0000 017a 5200  .............zR.
0x00400614  0178 1001 1b0c 0708 9001 0710 1400 0000  .x..............
0x00400624  1c00 0000 08fe ffff 2a00 0000 0000 0000  ........*.......
0x00400634  0000 0000 1400 0000 0000 0000 017a 5200  .............zR.
0x00400644  0178 1001 1b0c 0708 9001 0000 2400 0000  .x..........$...
0x00400654  1c00 0000 98fd ffff 3000 0000 000e 1046  ........0......F
0x00400664  0e18 4a0f 0b77 0880 003f 1a3b 2a33 2422  ..J..w...?.;*3$"
0x00400674  0000 0000 1c00 0000 4400 0000 a6fe ffff  ........D.......
0x00400684  1500 0000 0041 0e10 8602 430d 0650 0c07  .....A....C..P..
0x00400694  0800 0000 4400 0000 6400 0000 a0fe ffff  ....D...d.......
0x004006a4  6500 0000 0042 0e10 8f02 420e 188e 0345  e....B....B....E
0x004006b4  0e20 8d04 420e 288c 0548 0e30 8606 480e  . ..B.(..H.0..H.
```

```bash
[0x004005c4]> px
- offset -   0 1  2 3  4 5  6 7  8 9  A B  C D  E F  0123456789ABCDEF
0x004005c4  2261 6263 6465 6667 2272 6c64 0000 0000  "abcdefg"rld....
0x004005d4  011b 033b 3000 0000 0500 0000 1cfe ffff  ...;0...........
0x004005e4  7c00 0000 5cfe ffff 4c00 0000 52ff ffff  |...\...L...R...
0x004005f4  a400 0000 6cff ffff c400 0000 dcff ffff  ....l...........
0x00400604  0c01 0000 1400 0000 0000 0000 017a 5200  .............zR.
0x00400614  0178 1001 1b0c 0708 9001 0710 1400 0000  .x..............
0x00400624  1c00 0000 08fe ffff 2a00 0000 0000 0000  ........*.......
0x00400634  0000 0000 1400 0000 0000 0000 017a 5200  .............zR.
0x00400644  0178 1001 1b0c 0708 9001 0000 2400 0000  .x..........$...
0x00400654  1c00 0000 98fd ffff 3000 0000 000e 1046  ........0......F
0x00400664  0e18 4a0f 0b77 0880 003f 1a3b 2a33 2422  ..J..w...?.;*3$"
0x00400674  0000 0000 1c00 0000 4400 0000 a6fe ffff  ........D.......
0x00400684  1500 0000 0041 0e10 8602 430d 0650 0c07  .....A....C..P..
0x00400694  0800 0000 4400 0000 6400 0000 a0fe ffff  ....D...d.......
0x004006a4  6500 0000 0042 0e10 8f02 420e 188e 0345  e....B....B....E
0x004006b4  0e20 8d04 420e 288c 0548 0e30 8606 480e  . ..B.(..H.0..H.
```

```bash
[dio@dio-VirtualBox][re-env][0] $ ./helloworld 
"abcdefg"rld
```

```bash
Open the program in Radare2 in write mode via the command "r2 -w HelloWorld". 
If you wish to play around within it rather than modifying the source code directly, 
we can skip opening it in write mode, 
and open it in analysis mode instead by removing the -w. 

Always remember to be very cautious if this is anything malware-analysis related 
and use the proper precautions.

猜測，無法 patch apk 或許就是因為沒開啟 write mode?
```
