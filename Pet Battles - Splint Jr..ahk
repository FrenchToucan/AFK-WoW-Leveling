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
	Loop 30 ; 	//Press Auto button (tdbattlepetsscript required) Upped sleep to 2 seconds
	{
		ControlSend,, a, World of Warcraft
    		Sleep 2000
	}
	Loop 1 ; 	//wait 140 seconds then Revive Battle Pets
	{
		Sleep 140000
		ControlSend,, 8, World of Warcraft
    	}


}

/*
tdBattlePetScript:
if [self(#3).active]
	ability(345)
	ability(429)
endif 
if [self(#2).active]
	ability(345)
	ability(429)
endif  
if [self(#2).dead]
	change(#3)  
endif  
if [self(#1).dead]
	change(#2)  
endif  
if [self(#1).active]  
	ability(919) [!enemy.aura(918).exists]
	ability(921)
endif

Pets:
Zandalari Anklerender 2 1 2
Ashmaw Cub 1 1 1
Ashmaw Cub 1 1 1

Notes:
Put a Zandalari Anklerender in slot 1. If the Zandalari Anklerender ges knocked out, the Ashmaw Cubs are strong against the rats.
4389 character experience.
Character is not pushed back after battle. Approach code removed.
Not gossip dialogue. Gossip code removed.
*/