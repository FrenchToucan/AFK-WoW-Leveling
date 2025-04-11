#SingleInstance Force  ; Prevent multiple instances of the script

; Initialize variables
rootFolder := A_ScriptDir
trainerBattlesFolder := rootFolder "\Trainer Battles"
filePattern := "\.ahk$"  ; Regex pattern to match .ahk files
scriptList := []
selectedScript := ""
processHandle := 0

; Debugging: Display root folder and trainer battles folder
MsgBox("Root Folder: " rootFolder "`nTrainer Battles Folder: " trainerBattlesFolder)

; Call the function to populate the script list
GetFiles(trainerBattlesFolder, filePattern, scriptList)

; Debugging: Show the list of collected scripts
if scriptList.Length() {
    MsgBox("Files Found:`n" StrJoin("`n", scriptList))
} else {
    MsgBox("No matching files were found in the folder: " trainerBattlesFolder)
}

; Function to retrieve files recursively
GetFiles(folder, pattern, ByRef fileList) {
    ; Ensure the folder exists
    if !FileExist(folder) {
        MsgBox("The folder does not exist: " folder)
        return
    }

    ; Loop through files in the folder recursively
    for file in Dir(folder "\*", "FR") {  ; "F" = files only, "R" = recursive
        if file.Name ~= pattern {  ; Match the file pattern using regex
            fileList.Push(file.FullPath)  ; Add the file path to the list
        }
    }
}
; Create the GUI
Gui := Gui.New("Script Runner")
Gui.Add("Text", "x10 y10", "Select a script to run:")
DropDown := Gui.Add("DropDownList", "x10 y40 w300 vSelectedScript", "|" . StrJoin("|", scriptList))
RunButton := Gui.Add("Button", "x10 y80 w100", "Run")
StopButton := Gui.Add("Button", "x120 y80 w100", "Stop")
StatusText := Gui.Add("Text", "x10 y120 vScriptStatus", "Status: Idle")

; Set up event handlers
RunButton.OnEvent("Click", RunScript)
StopButton.OnEvent("Click", StopScript)

; Show the GUI
Gui.Show("w340 h160")

; Helper function to join array elements
StrJoin(delimiter, arr) {
    result := ""
    for index, item in arr {
        result .= (index = 1 ? "" : delimiter) item
    }
    return result
}

; Run the selected script
RunScript(*) {
    global DropDown, StatusText, processHandle

    selectedScript := DropDown.Value
    if selectedScript == ""
    {
        MsgBox("Please select a script first.")
        return
    }
    if processHandle
    {
        MsgBox("A script is already running. Please stop it first.")
        return
    }
    Run(selectedScript, , , &processHandle)
    StatusText.Value := "Status: Running " selectedScript
}

; Stop the running script
StopScript(*) {
    global StatusText, processHandle

    if !processHandle
    {
        MsgBox("No script is currently running.")
        return
    }
    Process("Close", processHandle)
    processHandle := 0
    StatusText.Value := "Status: Idle"
}

; Close the GUI and exit the script
Gui.OnEvent("Close", () => ExitApp())