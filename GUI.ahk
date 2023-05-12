Gui +LastFound
Gui, Add, Button, x10 y10 w60 h30, (Start)
Gui, Add, Button, x10 y50 w60 h30, (Stop)
Gui, Add, Button, x10 y90 w60 h30, (Pause)
Gui, Show, w80 h130, (Pet Battles)

Loop, Files, Pet Battles\*.ahk, F
{
  Gui, Add, Button, x80 y10+(A_Index-1)*40 w120 h30, %A_LoopFileName%
}

Gui, Submit, NoHide
Return

ButtonStart:
  MsgBox, Pet Battles - Start
  Return

ButtonStop:
  MsgBox, Pet Battles - Stop
  Return

ButtonPause:
  MsgBox, Pet Battles - Pause
  Return

Button1:
  Run, %A_ScriptDir%\Pet Battles\%Button1%.ahk
  Return

Button2:
  Run, %A_ScriptDir%\Pet Battles\%Button2%.ahk
  Return

; add more button callbacks for each .ahk file in the Pet Battles sub-folder
