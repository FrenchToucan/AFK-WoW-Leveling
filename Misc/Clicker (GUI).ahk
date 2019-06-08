#NoEnv
#WinActivateForce

hours := 0
minutes := 0
seconds := 0
milliseconds := 0
singleClick := false
doubleClick := false
clicks := 0

Gui, Add, Text, x12 y10 w60 h20, Hours
Gui, Add, Edit, x12 y30 w60 h20 vHours, Edit
Gui, Add, UpDown, x12 y50 w60 h20, UpDown
Gui, Add, Text, x82 y10 w60 h20, Minutes
Gui, Add, Edit, x82 y30 w60 h20 vMinutes, Edit
Gui, Add, UpDown, x82 y50 w60 h20, UpDown
Gui, Add, Text, x152 y10 w60 h20, Seconds
Gui, Add, Edit, x152 y30 w60 h20 vSeconds, Edit
Gui, Add, UpDown, x152 y50 w60 h20, UpDown
Gui, Add, Text, x222 y10 w60 h20, Milliseconds
Gui, Add, Edit, x222 y30 w60 h20 vMilliseconds, Edit
Gui, Add, UpDown, x262 y30 w20 h20, UpDown
Gui, Add, GroupBox, x12 y60 w270 h50, Click Type
Gui, Add, Radio, x22 y80 w80 h20 vSingleClick Checked, Single Click
Gui, Add, Radio, x112 y80 w80 h20 vDoubleClick, Double Click
Gui, Add, Text, x12 y120 w210 h20, Number of Clicks (0 = infinite)
Gui, Add, Edit, x12 y140 w60 h20 vClicks, Edit
Gui, Add, UpDown, x72 y140 w18 h20, UpDown
Gui, Add, Button, x192 y130 w90 h30 gMain, Go

Gui, Show, h170 w295, AutoClicker
Return


Main:
Gui, Submit
MsgBox, 0, AutoClicker, You can press Ctrl-Esc anytime to quit

MsgBox, 0, AutoClicker, Hit OK, then click where to repeatably click
KeyWait, LButton, D
MouseGetPos, mouseX, mouseY, winV
WinGetTitle, title, ahk_id %winV%

count := 0
ms := (Hours * 60 * 60 * 1000) + (Minutes * 60 * 1000) + (Seconds * 1000) + Milliseconds

if (Clicks == 0)
{
  ; 0 clicks means infinite clicks
  Loop
  {
    WinActivate, %title%
    if (DoubleClick == true)
    {
      MouseClick, left, mouseX, mouseY, 2
    }
    Else
    {
      MouseClick, left, mouseX, mouseY
    }

	Sleep, %ms%
  }
}
Else
{
  Loop %Clicks%
  {
    WinActivate, %title%
    if (DoubleClick == true)
    {
      MouseClick, left, mouseX, mouseY, 2
    }
    Else
    {
      MouseClick, left, mouseX, mouseY
    }

	Sleep, %ms%
  }
}

ExitApp

^Escape::ExitApp


GuiClose:
ExitApp