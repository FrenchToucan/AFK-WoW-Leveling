#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

reset_with_amalia()
{
	Loop 1 ;	//Target Amalia (for a full pet reset)
	{
		ControlSend,, 5, World of Warcraft
		Sleep 3000
	}	
}

reset_with_sir_galveston()
{
	Loop 1 ;	//Target Sir Galveston (for a full pet reset)
	{
		ControlSend,, 9, World of Warcraft
    	Sleep 3000
	}	
}

approach()
{
	Loop 1 ;	//Approach target
	{
		ControlSend,, {w down}, World of Warcraft
		sleep 900
		ControlSend,, {w up}, World of Warcraft
  		
	}
}

target(x)
{
	Loop 1 ;	//Target x - where x is hotkey for targeting the desired opponent
	{
		ControlSend,, %x%, World of Warcraft
		Sleep 1000
	}
}

interact()
{
	Loop 1 ; 	//Interact with target
	{
		ControlSend,, g, World of Warcraft
		Sleep 400
	}
}

gossip()
{
	Loop 1 ;	//Select gossip option #1 (Let's Fight!)
	{
		ControlSend,, 0, World of Warcraft
		Sleep 4000
	}
}

auto_pet_fight(x,y)
{
	Loop %x% ; 	//Press Auto button x number of times and rest for y between presses (tdbattlepetsscript required)
	{
		ControlSend,, a, World of Warcraft
		Sleep %y%
	}
}

revive_pets(x)
{
Loop 1 ; 	//Revive Battle Pets after x milliseconds
	{
		Sleep x
		ControlSend,, 8, World of Warcraft
	}
}