#!/usr/bin/env bash
. blinker.sh

echo -e "Select one option using up/down keys and enter to confirm:\n"

options=("demo 1 (nodejs)" "demo 2 (batch)" "demo 3 (python)")

select_option "${options[@]}"
choice=$?

if [ $choice -eq 0 ]; then
    cd demos
    cmd.exe /c node demo1.js
elif [ $choice -eq 1 ]; then
    cd demos
    cmd.exe /c demo2.bat 
elif [ $choice -eq 2 ]; then
    cd demos
    cmd.exe /c py demo3.py
fi