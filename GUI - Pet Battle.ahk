#SingleInstance Force
#NoEnv
#Include Fight AFK - Hunter - Ancient Mana Farm.ahk


SetWorkingDir %A_ScriptDir%
SetBatchLines -1

Gui Show, w620 h420, Dalaran Pet Battler

Gui Add, Button, hWndhBtnSirGalveston vBtnSirGalveston x12 y15 w80 h21, Sir Galveston
Gui Add, Button, x8 y56 w80 h23, Amalia

Return

vBtnSirGalveston:
   Run, Fight AFK - Hunter - Ancient Mana Farm
    return


GuiEscape(GuiHwnd) {
    ExitApp
}

GuiClose(GuiHwnd) {
    ExitApp
}
