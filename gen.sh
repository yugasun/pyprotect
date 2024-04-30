#!/bin/sh

rm -rf ./dist

# get --debug option
if [ "$1" = "--debug" ]; then
  DEBUG="--debug"
else
  DEBUG=""
fi

# Pyinstaller options
PYINSTALLER="pyinstaller -y"
SPEC_FILE="pyprotect.spec"

${PYINSTALLER} ${SPEC_FILE} -- ${DEBUG}
