# OPScript
![opscript](https://user-images.githubusercontent.com/68444929/176164417-a610887b-f4b3-4866-bacb-a3793730f860.png)

OPScript, language I made in batch.

# Usage
## Drag and drop a .ops file into `opscriptlauncher.bat`

# Examples
## This is hello world in opscript.
```
ptxt 1 1 1 1 1 HelloWorld!
endpage
guide_exit
```
## This is storing data in a made variable in opscript.
```
txtvar 1 1 1 1 1 1 HelloWorld
ptxt_varia
endp_ ;NOTHING
guide_exit
```
## This is a comment in opscript.
```
# comment!
endpage
guide_exit
```
## This is user input in opscript.
```
# greeting user
ptxt 1 1 1 1 1 Hello_User!
# make userinpt
userline
endp_ ;nothing
guide_exit
```
## This is a message box in opscript.
```
msgbox
endp_ ;NOTHING
guide_exit
```
If you hate that it doesn't display any messages, then you can edit `msgbox.vbs`
## This is a function that sleeps for 5 seconds in opscript.
```
ptxt 1 1 1 1 1 wait_5_seconds...
waitfile
endpage
guide_exit
```
## This is how you can make a blank text in opscript.
```
ptxt 1 1 1 1 1 Blank_text_below_me!
spaceout
endpage
guide_exit
```
## This is how you can make a game in opscript.
1. Make a new folder called `game` then copy and paste `opscriptlauncher.bat` and `msgbox.vbs` into `game`
2. Edit `msgbox.vbs` then inside the quotes of `msgbox("")` type in `Press OK to Play The Game.` like this `msgbox("Press OK to Play The Game.")`
3. Save and close `msgbox.vbs` then make a file called `game.ops`
4. Copy and paste this code into `game.ops`
```
msgbox
txtvar 1 1 1 1 1 1 YouWon!
ptxt 1 1 1 1 1 Youre_Being_ATTACKED!_Type_Anything_TO_Attack_Back!
userline
ptxt_varia
endpage
guide_exit
```
5. You are now finished making an art.
6. Drag and drop `game.ops` into `opscriptlauncher.bat`
7. There you have it! Enjoy :D
# Fun stuff.
## Firework in opscript.
```
time
ptxt 1 1 1 1 1 -----_---------
ptxt 1 1 1 1 1 ----/*/--------
ptxt 1 1 1 1 1 ---|--|--------
ptxt 1 1 1 1 1 ----<>---------
ptxt 1 1 1 1 1 ---------------
endp_ ;NOTHING
guide_exit
```
## Person
```
ptxt 1 1 1 1 1 -o
ptxt 1 1 1 1 1 /|\-
ptxt 1 1 1 1 1 /-\
endpage
guide_exit
```
## Shape
```
ptxt 1 1 1 1 1 ---/|
ptxt 1 1 1 1 1 --/-|
ptxt 1 1 1 1 1 -/--|
ptxt 1 1 1 1 1 /---|
endpage
guide_exit
```
# END OF README!
