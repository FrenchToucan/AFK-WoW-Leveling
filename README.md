Using AutoHotkey + Pet Battles to AFK Level Toons
=================================================

Requirements

-   [AutoHotkey 1.1](https://www.autohotkey.com/download/ahk-install.exe)

-   [tdpetbattle add-on](https://www.curseforge.com/wow/addons/pet-battle-scripts)

-   [Rematch add-on](https://www.curseforge.com/wow/addons/rematch)

-   Access to Legion Dalaran or the WoD Menagerie (Legion battles work much better at the moment and can run continuously until the realm resets)

Set-up

1.  Download Pet_Battles folder from this repository/

2.  Configure battle line-ups (battle pet and moves) using the commented pets and moves listed in each AHK file. Each file assumes you have three of each pet. If you don't, you will have to increase the time between battles by editing the AHK file for that battle (done by increase the number of milliseconds passed for the Revive_Pets function.

3.  Every battle requires a line-up reset so healthy pets can be swapped in. For the NPC used to reset, just create a Rematch profile for that NPC with any other pets you have.

4.  Now set up your hotkeys by referring to the Keyboard_Layouts folder. You will need to create macros using the commented commands.

5.  Now you can run the script while standing within approach distance of the trainer (Legion) or right in front of Challenge Post with mouse cursor on it (Menagerie). WoW does not need to be the in focus window for the script to run Legion battles and the user can do other things on the computer. For Menagerie battles, WoW will have to stay in focus and the user cannot interact with the computer. Make sure you come back and turn off the script at or before the realm resets and the trainer disappears.
