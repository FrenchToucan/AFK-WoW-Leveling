#Include %A_ScriptDir%/Functions.ahk

Loop
{
	reset_with_sir_galveston()
	
	approach()
	
	target(2)
	
	interact()
	
	gossip()
	
	auto_pet_fight(100,1500)
	
	revive_pets(88000)
}

/*
Pets
---------------------
Iron Starlette
Leveling Pet (maybe lvl 5+?)
Albino River Calf 2 1 1

tdBattlePetScript
---------------------
standby [ self(#2).active & enemy.ability(#3).duration=6 ]
change(#3) [ self(#2).played ]
standby [ enemy.aura(Unattackable:1358).exists ]
ability(Supercharge:208) [ self.aura(Howl:1725).exists ]
ability(Supercharge:208) [ enemy(#2).active & enemy.hp>864 & round=8 ]
ability(Wind-Up:459) [ enemy.hp>243 & round=9 ]
ability(Powerball:566) [ enemy(#2).active & enemy.round!=1 ]
ability(Powerball:566) [ enemy(#3).active & !self.aura(Wind-Up:458).exists ]
ability(Wind-Up:459)
change(#2) [ !self(#2).played ]
ability(#3) [ enemy.ability(#2).usable ]
ability(#2) [ enemy.aura(Stunned:927).exists ]
ability(#1)

Removes switch put other pet gets dragged in anyways and then has to be switched out. 6c
change(#3) [ self(#1).dead ]
standby [ enemy.aura(1358).exists ]
ability(208) [ self.aura(1725).exists ]
ability(208) [ enemy(#2).active & enemy.hp>864 & round=8 ]
ability(459) [ enemy.hp>243 & round=9 ]
ability(566) [ enemy(#2).active & enemy.round!=1 ]
ability(566) [ enemy(#3).active & !self.aura(458).exists ]
ability(459)
ability(#3) [ enemy.ability(#2).usable ]
ability(#2) [ enemy.aura(927).exists ]
ability(#1)
*/