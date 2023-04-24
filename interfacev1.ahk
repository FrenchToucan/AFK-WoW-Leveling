#Warn
SetWorkingDir(A_ScriptDir)

myGui := Gui()
myGui.Opt("+LastFound +AlwaysOnTop")
myGui.Add("Text", , "Scripts in Pet_Battles folder:")
ogcMyListView := myGui.Add("ListView", "r20 w400 vMyListView", ["Script Name", "Status"])
ogcButtonStart := myGui.Add("Button", "x+20 y+10 w80", "Start")
ogcButtonStart.OnEvent("Click", StartButton.Bind("Normal"))
ogcButtonPause := myGui.Add("Button", "x+20 y+0 w80", "Pause")
ogcButtonPause.OnEvent("Click", PauseButton.Bind("Normal"))
ogcButtonClose := myGui.Add("Button", "x+20 y+0 w80", "Close")
ogcButtonClose.OnEvent("Click", CloseButton.Bind("Normal"))
myGui.Title := "Pet_Battles Scripts"
myGui.Show("x100 y100")

Loop Files, A_ScriptDir "\Pet_Battles\*.ahk"
{
    filez := A_LoopFilePath
    filename := SubStr(filez, (InStr(filez, "\")+1)<1 ? (InStr(filez, "\")+1)-1 : (InStr(filez, "\")+1), -4)
    MyListView := ("", filename)
}
return

StartButton(A_GuiEvent, GuiCtrlObj, Info, *)
{ ; V1toV2: Added bracket
selected := MyListView.selection
if (selected != "")
{
    script := MyListView.GetItem(selected, 1)
    Run(A_ScriptDir "\Pet_Battles\" script ".ahk")
    MyListView.SetItem(selected, 2, "Running")
}
return
} ; V1toV2: Added Bracket before label

PauseButton(A_GuiEvent, GuiCtrlObj, Info, *)
{ ; V1toV2: Added bracket
selected := MyListView.selection
if (selected != "")
{
    script := MyListView.GetItem(selected, 1)
    WinClose(script ".ahk")
    MyListView.SetItem(selected, 2, "Paused")
}
return
} ; V1toV2: Added Bracket before label

CloseButton(A_GuiEvent, GuiCtrlObj, Info, *)
{ ; V1toV2: Added bracket
selected := MyListView.selection
if (selected != "")
{
    script := MyListView.GetItem(selected, 1)
    WinClose(script ".ahk")
    MyListView.Delete(selected)
}
return
} ; V1toV2: Added bracket in the end