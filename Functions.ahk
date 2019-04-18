#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

clear_with_amalia()
{
	Loop 1 ;	//Target Amalia (for a full pet clear)
	{
		ControlSend,, 5, World of Warcraft
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
	Loop 1 ;	//Target x - where is hotkey for targeting the desired opponent
	{
		ControlSend,, %x%, World of Warcraft
		Sleep 1000
		return
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
	Loop 1 ;	//Select gossip option #1 (let's fight)
	{
		ControlSend,, 0, World of Warcraft
		Sleep 5000
	}
}

auto_pet_fight(x,y)
{
	Loop %x% ; 	//Press Auto button (tdbattlepetsscript required)
	{
		ControlSend,, a, World of Warcraft
		Sleep %y%
	}
}

revive_pets(x)
{
Loop 1 ; 	//Revive Battle Pets after 30 seconds
	{
		Sleep x
		ControlSend,, 8, World of Warcraft
	}
}