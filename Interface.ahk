Loop Files, A_ScriptDir "\Pet_Battles\*.ahk"
    {
        FileList := A_LoopFilePath
        filename := SubStr(file, ((InStr(file, "\")+1)<1 ? (InStr(file, "\")+1)-1 : (InStr(file, "\")+1))<1 ? ((InStr(file, "\")+1)<1 ? (InStr(file, "\")+1)-1 : (InStr(file, "\")+1))-1 : ((InStr(file, "\")+1)<1 ? (InStr(file, "\")+1)-1 : (InStr(file, "\")+1)), -4)
        MyListView.Add("", filename)
    }

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
myGui.Title := "Pet Battles Scripts"
myGui.Show("x100 y100")
return

StartButton(A_GuiEvent, GuiCtrlObj, Info, *)
{ 
    selected := MyListView.selection
    if (selected != "")
    {
        script := MyListView.GetItem(selected, 1)
        Run(A_ScriptDir "\Pet_Battles\" script ".ahk")
        MyListView.SetItem(selected, 2, "Running")
    }
    return
}

PauseButton(A_GuiEvent, GuiCtrlObj, Info, *)
{
    selected := MyListView.selection
    if (selected != "")
    {
        script := MyListView.GetItem(selected, 1)
        WinClose(script ".ahk")
        MyListView.SetItem(selected, 2, "Paused")
    }
    return
}

CloseButton(A_GuiEvent, GuiCtrlObj, Info, *)
{
    selected := MyListView.selection
    if (selected != "")
    {
        script := MyListView.GetItem(selected, 1)
        WinClose(script ".ahk")
        MyListView.Delete(selected)
    }
    return
}

