Loop
{
	Loop 1 ;	//Target Amalia (for a full pet clear)
	{
		ControlSend,, 5, World of Warcraft
    		Sleep 5000
	}	

	Loop 1 ;	//Approach target
	{
    		ControlSend,, {w down}, World of Warcraft
		sleep 1100
		ControlSend,, {w up}, World of Warcraft
    		
	}
	Loop 1 ;	//Target Sir Galveston
	{
		ControlSend,, 9, World of Warcraft
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
	Loop 60 ; 	//Press Auto button (tdbattlepetsscript required)
	{
		ControlSend,, a, World of Warcraft
    		Sleep 1500
	}
	Loop 1 ; 	//wait 100 seconds then Revive Battle Pets
	{
		Sleep 100000
		ControlSend,, 8, World of Warcraft
    	}


}

/*
change(#2) [self(#3).active]
if [enemy(#1).active]
use(Fluch der Verdammnis:218)
use(Arkanschlag:421)
endif

if [enemy(#2).active]
use(Magie verstärken:488) [enemy.round = 1]
use(Arkanschlag:421)
endif

if [enemy(#3).active]
use(Fluch der Verdammnis:218)
use(Arkanschlag:421)
endif

ability(Jab:219) [self.round=1]
ability(Roar of the Dead:2071) [enemy(#3).active]
ability(Tornado Punch:1052) [enemy(#3).active]
change(#3) [!self(#3).played]
use(#1)
*/