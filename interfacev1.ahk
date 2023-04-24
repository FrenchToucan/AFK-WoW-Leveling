scriptFolder := /Pet_Battles

; Create the GUI window
myGui := Gui()
myGui.Add("Text", , "Select a script to run:")
ogcScriptList := myGui.Add("ListBox", "vScriptList", [GetScriptList(scriptFolder)])
ogcScriptList.OnEvent("DoubleClick", RunScript.Bind("DoubleClick"))
ogcStartButton := myGui.Add("Button", "vStartButton", "Start")
ogcStartButton.OnEvent("Click", StartScript.Bind("Normal"))
ogcPauseButton := myGui.Add("Button", "vPauseButton", "Pause")
ogcPauseButton.OnEvent("Click", PauseScript.Bind("Normal"))
ogcCloseButton := myGui.Add("Button", "vCloseButton", "Close")
ogcCloseButton.OnEvent("Click", CloseScript.Bind("Normal"))
myGui.Show()

; Define the function to get the list of scripts in the folder
GetScriptList(folder) {
fileList := ""
Loop, Files, %folder%*.ahk
{
; Add each script filename to the list, removing the path and extension
file := SubStr(A_LoopFileName, 1, -4)
fileList .= file "`n"
}
return fileList
}

; Define the function to run the selected script
RunScript() {
Gui, Submit
global scriptName := Gui.ScriptList
global scriptPath := scriptFolder "" scriptName ".ahk"
}

; Define the function to start the selected script
StartScript() {
global scriptPath
Process, Exist, %scriptPath%
if (ErrorLevel)
{
MsgBox, The script is already running.
}
else
{
Run %scriptPath%
}
}

; Define the function to pause the selected script
PauseScript() {
global scriptPath
Process, Exist, %scriptPath%
if (ErrorLevel)
{
MsgBox, The script is not running.
}
else
{
Process, Pause, %scriptPath%
}
}

; Define the function to close the selected script
CloseScript() {
global scriptPath
Process, Exist, %scriptPath%
if (ErrorLevel)
{
MsgBox, The script is not running.
}