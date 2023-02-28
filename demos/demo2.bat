@echo off

set /p ProjectName="Enter HTML Project Name: "

mkdir %ProjectName%\img

cd %ProjectName%

echo >script.js
echo >style.css
echo >index.html

start index.html
start style.css
start script.js

exit