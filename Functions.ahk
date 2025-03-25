#Warn  ; Enable warnings to assist with detecting common errors.
SendMode("Input")  ; Recommended for new scripts due to its superior speed and reliability.

; -----Pet Battle Functions-----
challenge_pole_interact()
{
	CoordMode("Mouse", "Screen")
	MouseMove((A_ScreenWidth // 2), (A_ScreenHeight // 2))
	ControlClick(, "World of Warcraft", , "RIGHT")
	Sleep(500)
}

reset_with_amalia() ;	Target Amalia (for a full pet reset)
{
	ControlSend(2, , "World of Warcraft")
	Sleep(3000)
}

reset_with_sir_galveston() ;	Target Sir Galveston (for a full pet reset)
{
	ControlSend(3, , "World of Warcraft")
    Sleep(3000)

}

reset_with_trixy() ;	Target Trixy (for a full pet reset when fighting Xorvasc)
{
	ControlSend(2, , "World of Warcraft")
    Sleep(3000)
}

reset_with_baeloth() ;	Target Baeloth (for a full pet reset when fighting Robert Craig)
{
	ControlSend(5, , "World of Warcraft")
    Sleep(3000)
}

reset_with_egcellent() ;	Target Egcellent (for a full pet reset when fighting Grixis Tinypop)
{
	ControlSend(6, , "World of Warcraft")
    Sleep(3000)
}

approachPlus() ;	Approach target
{
	ControlSend("{w down}", , "World of Warcraft")
	Sleep(900)
	ControlSend("{w up}", , "World of Warcraft")
	Sleep(1500)
}

approach() ;	Approach target
{
	ControlSend("{w down}", , "World of Warcraft")
	Sleep(700)
	ControlSend("{w up}", , "World of Warcraft")
	Sleep(1500)
}

approach_xorvasc() ;	Approach Xorvasc - requires slightly longer approach than others
{
	ControlSend("{w down}", , "World of Warcraft")
	Sleep(850)
	ControlSend("{w up}", , "World of Warcraft")
	Sleep(1500)
}

target(x) ;	Target x - where x is hotkey for targeting the desired opponent
{
	ControlSend(x, , "World of Warcraft")
	Sleep(1000)
}

interact() ; 	Interact with target
{
	ControlSend("g", , "World of Warcraft")
	Sleep(500)
}

gossip() ;	Select gossip option #1 (Let's Fight!)
{
	ControlSend(1, , "World of Warcraft")
	Sleep(4000)
}

auto_pet_fight(loops,sleeptime) ; 	Press Auto button x number of times and rest for y between presses (tdbattlepetsscript required)
{
	Loop loops
	{
	ControlSend("a", , "World of Warcraft")
	Sleep(sleeptime)	
	}
}

revive_pets(sleeptime) ;	Revive Battle Pets via keybind after x milliseconds
{
	Sleep(sleeptime)
	ControlSend(9, , "World of Warcraft")
}

/*
Hotkeys can't be included via a function
	^!p::Pause() ; Ctrl + Alt + p
	^!e::ExitApp() ; Ctrl + Alt + e
	^!r::Reload() ; Ctrl + Alt + r
*/ 

;Stand_Close_Message() ; Doesn't  work - CHECK ON THIS, I THINK IT DOES WORK
;{
;	MsgBox Position character close to opponent. The character will not be thrown back after the battle.
;	Sleep 10000
;}

; -----Other Functions------
;
;repeat_with_parameters(loops,key,sleeptime)
;{
;	Loop %loops% ; //Can be used to repeat a single hotkey as many times as necessary with proper sleeptime
;	{
;		ControlSend,, %key%, World of Warcraft
;		Sleep %sleeptime%
;	}
;}
