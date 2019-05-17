Loop
{
	Loop 1 ;	//Full pet clear by targeting Amalia
	{
		ControlSend,, 5, World of Warcraft
		Sleep 4000
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
	Loop 35 ; 	//Press Auto button (tdbattlepetsscript required)
	{
		ControlSend,, a, World of Warcraft
		Sleep 4000
	}
	Loop 1 ; 	//Revive Battle Pets after 140 seconds
	{
		Sleep 140000
		ControlSend,, 8, World of Warcraft
	}

}

/*
tdBattlePetScript
---------------------
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

Pets
---------------------
Zandalari Anklerender 2 1 2
Ashmaw Cub 1 1 1
Ashmaw Cub 1 1 1

Notes
---------------------
Put a Zandalari Anklerender in slot 1. If the Zandalari Anklerender ges knocked out, the Ashmaw Cubs are strong against the rats.
No room for level pet with this arrangement.
42xx character experience per battle.
Character is not pushed back after battle. Approach code removed.
Not gossip dialogue. Gossip code removed.
*/