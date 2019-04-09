Loop
{
	Loop 1 ;	//Target Amalia (for a full pet clear)
	{
		ControlSend,, 5, World of Warcraft
    		Sleep 4000
	}	

	Loop 1 ;	//Approach target reduced sleep between down and up
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
	Loop 33 ; 	//Press Auto button (tdbattlepetsscript required) upped sleep to 5 seconds
	{
		ControlSend,, a, World of Warcraft
    		Sleep 7000
	}
	Loop 1 ; 	//wait 30 seconds then Revive Battle Pets
	{
		Sleep 30000
		ControlSend,, 8, World of Warcraft
    	}


}

/*
change(#2) [ self(#3).played ]
change(#3) [ enemy(#2).dead & ! self(#3).played ]
change(#2) [ enemy(#2).active ]
ability(Dodge:312) [ self.aura(Whirlpool:512).duration = 1 ]
ability(Sandstorm:453)
ability(#1)
*/