Loop
{
	Loop 1 ;	//Target Amalia (for a full pet clear)
	{
		ControlSend,, 5, World of Warcraft
    		Sleep 5000
	}	
	Loop 1 ;	//Target Splint Jr.
	{
		ControlSend,, 4, World of Warcraft
    		Sleep 1000
	}
	Loop 1 ; 	//Interact with target
	{
    		ControlSend,, g, World of Warcraft
    		Sleep 500
	}
	Loop 15 ; 	//Press Auto button (tdbattlepetsscript required)
	{
		ControlSend,, a, World of Warcraft
    		Sleep 1500
	}
	Loop 1 ; 	//wait 190 seconds then Revive Battle Pets - 180 was too little until additional pets can be scripted in
	{
		Sleep 190000
		ControlSend,, 8, World of Warcraft
    	}


}

/*
tdBattlePetScript:
ability(919) [!enemy.aura(918).exists]
ability(921)

Pets:
Zandalari Anklerender 2 1 2

Notes:
Put a Zandalari Anklerender in slot 1. The rest don't matter because they wil not come in; this is only good for character experience (4389 exp).
Character is not pushed back after battle. Approach code removed.
Not gossip dialogue. Gossip code removed.
*/