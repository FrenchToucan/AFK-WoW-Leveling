**Using AutoHotkey + Pet Battles to AFK Level Toons in Retail WoW**
================================================================

**Requirements**

-   [AutoHotkey 2.0](https://www.autohotkey.com/download/ahk-v2.exe)
-   [tdpetbattle add-on](https://www.curseforge.com/wow/addons/pet-battle-scripts)
-   [Rematch add-on](https://www.curseforge.com/wow/addons/rematch)
-   [DialogueKey RF add-on](https://www.curseforge.com/wow/addons/dialogkey-df)
-   Access to Legion Dalaran or the WoD Menagerie (Legion battles work much better at the moment and can run continuously until the realm resets)

**Set-up**

1. Select the following check boxes on the Rematch configuration screen (under Collections > Battle Pets): Auto Load + On Target Only (then /reload ui) and Load Healthiest Pets + Allow Any Version.
2.  Download Pet_Battles folder from this repository.
3.  Configure battle line-ups (battle pet and moves) using the commented pets and moves listed in each AHK file. Each file assumes you have three of each pet. If you don't, you will have to increase the time between battles by editing the AHK file for that battle (done by increase the number of milliseconds passed for the Revive_Pets function.
4.  Every battle requires a line-up reset so healthy pets can be swapped in. For the NPC used to reset, just create a Rematch profile for that NPC with any other pets you have.
5.  Now set up your keybinds by referring to the Keyboard_Layouts folder. You will need to create targeting and pet revive macros using the commented commands.
6.  Now you can run the script while standing within approach distance of the trainer (Legion) or right in front of Challenge Post with mouse cursor on it (Menagerie). WoW does not need to be the in focus window for the script to run Legion battles and the user can do other things on the computer. For Menagerie battles, WoW will have to stay in focus and the user cannot interact with the computer. Make sure you come back and turn off the script at or before the realm resets and the trainer disappears.

**Usage**

The bot will perform pet trainer battles repeatedly for character XP. Some trainer battles can also level up pets but that is not the objective of this bot. The user can customize the timing by editing the <Trainer Name>.ahk script file.
  
**Disclaimer**

AFK-WoW-Leveling is intended for educational purposes only. The use of bots and automation tools violates WoW's Terms of Service and can result in account bans and legal action. Use this project at your own risk.
  
**License**

AFK-WoW-Leveling is licensed under the MIT License.
