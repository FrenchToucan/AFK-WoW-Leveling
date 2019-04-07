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
	Loop 1 ;	//Target Tiffany Nelson
	{
		ControlSend,, 6, World of Warcraft
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
	Loop 120 ; 	//Press Auto button (tdbattlepetsscript required)
	{
		ControlSend,, a, World of Warcraft
    		Sleep 1500
	}
	Loop 1 ; 	//wait 5 minutes then Revive Battle Pets
	{
		Sleep 300000
		ControlSend,, 8, World of Warcraft
    	}


}

/*
change(#2) [self(#1).dead & !self(#2).played]
change(#3) [self(#2).active]
if [enemy(#3).active & self(#1).active]
standby [enemy.hp <700]
endif
ability(Emerald Dream:598) [self(#1).hp < 900 & !enemy(#3).active]
ability(Emerald Presence:597) [self(#1).aura(Emerald Presence:823).duration <=1 & !enemy(#3).active]
ability(Emerald Bite:525)
ability(Ion Cannon:209) [enemy(#3).hp > 659 & enemy.hp <1098]
ability(Shock and Awe:646)
ability(Missile:777)
*/