#!/usr/bin/bash

set -e

gcc -c src/testlib.c -o lib/testlib.o && ar rcs lib/testlib.a lib/testlib.o
nim --passL:"-L lib/" -o:bin/testlib.exe compile src/main.nim 
