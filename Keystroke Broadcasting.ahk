; **************************
; *** Window Renaming Shift-F1 - Shift-F4 ***
; **************************

#IfWinActive, World of Warcraft
   ~<+F1::
	WinSetTitle, World of Warcraft, , WoW0
return

#IfWinActive, World of Warcraft
   ~<+F2::
	WinSetTitle, World of Warcraft, , WoW1
return

#IfWinActive, World of Warcraft
   ~<+F3::
	WinSetTitle, World of Warcraft, , WoW2
return

#IfWinActive, World of Warcraft
   ~<+F4::
	WinSetTitle, World of Warcraft, , WoW3
return

#IfWinActive, WoW0
   ~<+F5::
	WinSetTitle, WoW0, , World of Warcraft
return

#IfWinActive, WoW1
   ~<+F6::
	WinSetTitle, WoW1, , World of Warcraft
return

#IfWinActive, WoW2
   ~<+F7::
	WinSetTitle, WoW2, , World of Warcraft
return

#IfWinActive, WoW3
   ~<+F8::
	WinSetTitle, WoW3, , World of Warcraft
return

WinGet, W0, list, WoW0
WinGet, W1, list, WoW1
WinGet, W2, list, WoW2
WinGet, W3, list, WoW3

; **************************
; *** Hotbars SPACE ***
; **************************

Space:: 
KeyWait Space
IfWinActive, WoW0
IfWinActive, WoW1
IfWinActive, WoW2
IfWinActive, WoW3
{
ControlSend,, {Space}, ahk_id %W01% 
ControlSend,, {Space}, ahk_id %W11% 
ControlSend,, {Space}, ahk_id %W21% 
ControlSend,, {Space}, ahk_id %W31%
ControlSend,, {Space}, ahk_id %wowid5%
Return
}

; ***************************
; *** Hotbars 1-0, -, = ***
; ***************************

~1:: 
KeyWait 1 
IfWinActive, WoW0
IfWinActive, WoW1
IfWinActive, WoW2
IfWinActive, WoW3
{  
ControlSend,, 1, ahk_id %W01% 
ControlSend,, 1, ahk_id %W11% 
ControlSend,, 1, ahk_id %W21% 
ControlSend,, 1, ahk_id %W31% 
ControlSend,, 1, ahk_id %wowid5%
}