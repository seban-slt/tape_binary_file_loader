# Code3 Tape Loader

This repository contains the tape loaders for Atari 8-bit computers. The loaders can load files in Atari DOS binary file format. This is ultra-compact and extremely low size loaders.

First version of this loader was done in early nineties. The first version was created to fit in two standard data records. And it's placed on page 7 ($0700), it can load any file that fits in those areas: `$0480-$06FF and $0800-$BFFF`. Loader don't use any location on zero page, it executes the INIT segments (`$2E2-$2E3`) during loading of data and after load run file at address placed at RUN vector (`$2E0-$2E1`), but if the RUN segment is not set, the file is executed from first DOS segment of binary DOS file.

The second version of loader is created during the experiments with Turbo 2600 interface (FSK based Turbo interface for 8-bit Atari computer by the "SZOK" company, from Świebodzin city) and was inspired by the AST Loader by Pecuś. During optimization of code, and removing some code, the loader fits in 128 byte limit, and uses trick that's fools the OS-ROM boot process to load only one record of DATA and execute it immediately.

The one block version fits in `$36B-$3EA`, so it can load the file within `$0480-$BFFF` area.

Both loaders uses direct jumps to OS-ROM, and expects the Atari XL/XE OS-ROM v.2 is present.

In both loaders the $400-$47F area is used as a cassette read buffer. The 1-block version is also can't run the files without RUN segment (sorry, no place for additional code).

The loader located at `$36B-$3EA` displays the "#" symbol at the bottom of the screen after starting. The loader placed at page seven `$700-$7FF` displays the `'` symbol after it loads and starts.

The first version of loader was a part of `"Code3 Tape Copy"`, a "**disk to tape**" copy program that can automate the coping the executable binary DOS files (games, utilities, demos) to tape. In future I will probably put sources of "Code3 Tape Copy" to GitHub also.

## Licence

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>
