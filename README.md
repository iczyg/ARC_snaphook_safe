# ARC_snaphook_safe

lua script I wrote for my friend who wanted to easily safe pocket his snap hook after using it in the popular game, Arc Raiders.
The reason for doing so is due to the snap hook being a very rare, but also very useful item that he did not want to risk losing in-game.  Items in the safe pocket remain with the player no matter what.

[![Video of script in action](https://img.youtube.com/vi/3Q8_Y2Ihxx4/maxresdefault.jpg)](https://www.youtube.com/watch?v=3Q8_Y2Ihxx4)

![discordtext1](https://github.com/user-attachments/assets/f9753ccf-04eb-45de-a3c1-ca38c4b7ec99)
![discordtext2](https://github.com/user-attachments/assets/83b43257-69ce-45a5-890c-cfeb61a058c6)

The constraints for this was that we did not want to use external software such as AutoHotkey or any kind of code injection, as those types of things can be disallowed software in video games, therefore, I wanted to create something that works with my Logitech mouse software, which would not cause problems with the game.  Also, using the built in mouse macro function would not work, as mouse position was not a valid parameter in Logitech's G Hub software.

As a result, I came up with this script, which runs in 120 ms.

Script works as follows:
I set the resolution to my monitor size (4k).
I set the pixel coordinates to Logitech's absolute coordinates.
I create a smooth mouse dragging motion between 2 coordinates that I will set (so that the mouse doesn't just teleport far away during the script).
I create an event that starts when I press the mouse button (I started with middle mouse which is mouse button 3, then moved it to the tilt of my mousewheel which is button 10 for tilting right, and button 11 for tilting left).
On tilt right, TAB is pressed to bring up the inventory menu, then the mouse is moved to the 4th quick use slot, then mouse click and smoothly drag it to the safepocket slot, before releasing, and then TAB is pressed again to close the menu.
The sleep delays are to allow time for the menu to come up, and for the mouse to have time to be dragged.
On tilt right, a similar procedure is followed, except the item in the 2nd quick use slot is swapped for the item on the top right corner of the backpack.  (This is used to quickly switch between the normal "shield recharger" item and the "surge shield recharger" item.)

Usage:
Proper usage of this script will require the user to set the screen width and height to their own screen size, and set the coordinates of their mouse respectively.  The sleep delays have already been optimized to take into account potential game latency.
To use with Logitech software, simply add the .lua script to the current mouse profile and run it.
