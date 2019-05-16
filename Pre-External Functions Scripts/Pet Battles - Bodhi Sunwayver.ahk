Loop
{
	Loop 1 ;	//Full pet clear by targeting Amalia
	{
		ControlSend,, 5, World of Warcraft
		Sleep 4000
	}	

	Loop 1 ;	//Approach target
	{
		ControlSend,, {w down}, World of Warcraft
		sleep 900
		ControlSend,, {w up}, World of Warcraft
    		
	}
	Loop 1 ;	//Target Bodhi Sunwayver
	{
		ControlSend,, 3, World of Warcraft
		Sleep 1000
	}
	Loop 1 ; 	//Interact with target
	{
		ControlSend,, g, World of Warcraft
		Sleep 500
	}
	Loop 1 ;	//Select gossip option #1 (let's fight)
	{
		ControlSend,, 0, World of Warcraft
		Sleep 5000
	}
	Loop 33 ; 	//Press Auto button (tdbattlepetsscript required)
	{
		ControlSend,, a, World of Warcraft
		Sleep 7000
	}
	Loop 1 ; 	//Revive Battle Pets after 30 seconds
	{
		Sleep 30000
		ControlSend,, 8, World of Warcraft
	}
}

/*
tdBattlePetScript
---------------------
change(#2) [ self(#3).played ]
change(#3) [ enemy(#2).dead & ! self(#3).played ]
change(#2) [ enemy(#2).active ]
ability(Dodge:312) [ self.aura(Whirlpool:512).duration = 1 ]
ability(Sandstorm:453)
ability(#1)

Pets
---------------------
ADD PETS

Notes
---------------------
If you add another Idol, might be able to reduce time between loops down to less than 30.
Character experience 13xx per round.
*/