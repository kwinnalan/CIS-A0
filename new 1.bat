mkdir test
cd test
mkdir red
mkdir blue
cd red
mkdir magenta
cd magenta
echo @echo off > COLOR.bat
echo echo this file is in folder >> COLOR.bat
echo @cd >> COLOR.bat
echo pause >> COLOR.bat
cacls COLOR.bat /p EVERYONE:f
mkdir next
copy COLOR.bat next\nextCOLOR.bat 
cd..
cd..
cd blue
mkdir cyan
cd cyan
echo @echo off > COLOR.bat
echo echo this file is in folder >> COLOR.bat
echo @cd >> COLOR.bat
echo pause >> COLOR.bat
cacls COLOR.bat /p EVERYONE:f
mkdir next
copy COLOR.bat next\nextCOLOR.bat 
cd..
cd..
dir /s/b *.bat > scripts.txt
dir /S >> contents.txt 
findstr /i /c /n "folder" contents.txt > foundText.txt
rmdir /s red blue

