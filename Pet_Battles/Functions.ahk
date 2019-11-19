#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
; -----Pet Battle Functions-----
reset_with_amalia()
{
	Loop 1 ;	Target Amalia (for a full pet reset)
	{
		ControlSend,, 2, World of Warcraft
		Sleep 3000
	}	
}

reset_with_sir_galveston()
{
	Loop 1 ;	Target Sir Galveston (for a full pet reset)
	{
		ControlSend,, 3, World of Warcraft
    	Sleep 3000
	}	
}

reset_with_trixy()
{
	Loop 1 ;	Target Trixy (for a full pet reset when fighting Xorvasc)
	{
		ControlSend,, 2, World of Warcraft
    	Sleep 3000
	}	
}

reset_with_baeloth()
{
	Loop 1 ;	Target Baeloth (for a full pet reset when fighting Robert Craig)
	{
		ControlSend,, 5, World of Warcraft
    	Sleep 3000
	}	
}

approachPlus()
{
	Loop 1 ;	Approach target
	{
		ControlSend,, {w down}, World of Warcraft
		Sleep 900
		ControlSend,, {w up}, World of Warcraft
		Sleep 1500
  		
	}
}

approach()
{
	Loop 1 ;	Approach target
	{
		ControlSend,, {w down}, World of Warcraft
		Sleep 700
		ControlSend,, {w up}, World of Warcraft
		Sleep 1500
  		
	}
}

approach_xorvasc()
{
	Loop 1 ;	Approach Xorvasc - requires slightly longer approach than others
	{
		ControlSend,, {w down}, World of Warcraft
		Sleep 850
		ControlSend,, {w up}, World of Warcraft
		Sleep 1500
  		
	}


}

target(x)
{
	Loop 1 ;	Target x - where x is hotkey for targeting the desired opponent
	{
		ControlSend,, %x%, World of Warcraft
		Sleep 1000
	}
}

interact()
{
	Loop 1 ; 	Interact with target
	{
		ControlSend,, g, World of Warcraft
		Sleep 400
	}
}

gossip()
{
	Loop 1 ;	Select gossip option #1 (Let's Fight!)
	{
		ControlSend,, 0, World of Warcraft
		Sleep 4000
	}
}

auto_pet_fight(loops,sleeptime)
{
	Loop %loops% ; 	Press Auto button x number of times and rest for y between presses (tdbattlepetsscript required)
	{
		ControlSend,, a, World of Warcraft
		Sleep %sleeptime%
	}
}

revive_pets(sleeptime)
{
	Loop 1 ; 	Revive Battle Pets after x milliseconds
	{
		Sleep %sleeptime%
		ControlSend,, 9, World of Warcraft
	}
}

Stand_Close_Message() ; Doesn't  work
{
	MsgBox Position character close to opponent. The character will not be thrown back after the battle.
	Sleep 10000
}

; -----Other Functions------
repeat_with_parameters(loops,key,sleeptime)
{
	Loop %loops% ; //Can be used to repeat a single hotkey as many times as necessary with proper sleeptime
	{
		ControlSend,, %key%, World of Warcraft
		Sleep %sleeptime%
	}
}