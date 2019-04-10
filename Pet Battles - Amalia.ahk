Loop
{
	Loop 1 ;	//Target Sir Galveston (for a full pet clear)
	{
		ControlSend,, 9, World of Warcraft
    		Sleep 3000
	}	

	Loop 1 ;	//Approach Amalia
	{
    		ControlSend,, {w down}, World of Warcraft
		sleep 900
		ControlSend,, {w up}, World of Warcraft
    		
	}
	Loop 1 ;	//Target Amalia
	{
		ControlSend,, 5, World of Warcraft
    		Sleep 4000
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
	Loop 100 ; 	//Press Auto button (tdbattlepetsscript required)
	{
		ControlSend,, a, World of Warcraft
    		Sleep 1500
	}
	Loop 1 ; 	//wait x minutes then Revive Battle Pets
	{
		Sleep 90000
		ControlSend,, 8, World of Warcraft
    	}


}

/*
standby [ self(#2).active & enemy.ability(#3).duration=6 ]
change(#3) [ self(#2).played ]
standby [ enemy.aura(1358).exists ]
ability(208) [ self.aura(1725).exists ]
ability(208) [ enemy(#2).active & enemy.hp>864 & round=8 ]
ability(459) [ enemy.hp>243 & round=9 ]
ability(566) [ enemy(#2).active & enemy.round!=1 ]
ability(566) [ enemy(#3).active & !self.aura(458).exists ]
ability(459)
change(#2) [ !self(#2).played ]
ability(#3) [ enemy.ability(#2).usable ]
ability(#2) [ enemy.aura(927).exists ]
ability(#1)
*/