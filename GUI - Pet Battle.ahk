Gui, Add, Text,, Select a pet battle opponent.`nTo cancel, press ESCAPE or close this window.
Gui, Add, ListBox, vMyListBox gMyListBox w400 r10
Gui, Add, Button, Default, OK
Loop, Pre-External_Function_Scripts/*.*  ; Change this folder and wildcard pattern to suit your preferences.
{
    GuiControl,, MyListBox, %A_LoopFileFullPath%
}
Gui, Show
return

MyListBox:
if (A_GuiEvent != "DoubleClick")
    return
; Otherwise, the user double-clicked a list item, so treat that the same as pressing OK.
; So fall through to the next label.
ButtonOK:
GuiControlGet, MyListBox  ; Retrieve the ListBox's current selection.
; MsgBox, 4,, Would you like to launch the file or document below?`n`n%MyListBox%
; IfMsgBox, No
 ;  return
; Otherwise, try to launch it:
Run, %MyListBox%,, UseErrorLevel
if (ErrorLevel = "ERROR")
    MsgBox Could not launch the specified file. Perhaps it is not associated with anything.
return

GuiClose:
GuiEscape:
ExitApp