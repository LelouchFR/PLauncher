<h1 align="center">PLauncher</h1>

PLauncher is the short name of Project Launcher

Languages used for this Launcher is Shell Script, I've taken this one because I wanted to large my knowledge around programming and doing some shortcuts so I can launch easely some tasks

<h2>How does it work ?</h2>

The file [blincker.sh](./blinker.sh) is the main corpus of the project, he helps to make an easy user friendly chooser for example to launch a certain nodejs project, or other shortcuts or anything you can do

The [PLauncher.sh](./PLauncher.sh) is in 4 parts cut:
```sh
#!/usr/bin/env bash
. blinker.sh
```
This one puts the shebang as `/usr/bin/env bash` and imports after the [blinker.sh](./blinker.sh) file to launch the main function.

```sh
echo -e "Select one option using up/down keys and enter to confirm:\n"
options=("demo 1 (nodejs)" "demo 2 (batch)" "demo 3 (python)")
```
The first line is just a simple echo to kinda show what is going on.

The **second line is very important**, this one will show all the options to put on the screen, you can put as many as you want, just use correctly the list syntax from Shell Script.

```sh
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
```
This block is there to link all the options together to launch the correct option, it starts with 0 like a list, the first one (all the way up) is the 0 and the others follow.
```
zero
one
two
three
four
...
```
You can put anything you want into the options, feel free to make it better