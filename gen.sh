#!/bin/sh

rm -rf ./dist

# Application Filename for EXE
name="pyprotect"
version="0.1.0"
FILENAME="${name}_${version}"

# Pyinstaller options
PYINSTALLER="pyinstaller -y"
CLEAN="--clean"
MAIN_FILE="main.py"
OUTPUT_NAME="--name ${FILENAME}"
EXTRA_HOOKS="--additional-hooks-dir extra-hooks"
ICON="--icon ico\example.ico"
ONEFILE="--onefile"

${PYINSTALLER} ${CLEAN} ${OUTPUT_NAME} ${ICON} ${EXTRA_HOOKS} ${MAIN_FILE} ${ONEFILE}
