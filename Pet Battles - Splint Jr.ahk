#Include Functions.ahk

Loop
{
	reset_with_amalia()
	
	target(6)
	
	interact()
	
	gossip()
	
	auto_pet_fight(35,4000)
	
	revive_pets(140000)
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