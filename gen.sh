#!/bin/sh

rm -rf ./dist

# 1. obfuscate file
# pyarmor gen demo.py

# 2. obfuscate file bind to Mac address
# pyarmor gen -O dist -b 9c:3e:53:7f:44:5a demo.py

# 3. obfuscate directory
pyarmor gen -O dist app
