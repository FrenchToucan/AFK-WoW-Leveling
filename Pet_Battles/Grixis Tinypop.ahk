#Include Functions.ahk

Loop
{
	target(6)
	
	approach()
	
	target(7)
	
	interact()
	
	gossip()
	
	auto_pet_fight(35,4000)
	
	revive_pets(3000)
}

/*
Pets
---------------------
Anubisath Idol 1 1 1
Kun-Lai Runt 2 2 2
Any Lvl 1 <-dead pets get levels in this fight

tdBattlePetScript
---------------------

change(#3) [ enemy(#1).dead & !self(#3).played ]
change(#2) [ enemy(#2).hp < 800 & !self(#2).played ]
change(#1) [ self(#2).dead ]
change(#1) [ !enemy(#3).active ]
change(#1) [ enemy(#3).active & enemy(#3).aura(Stunned:927).exists ]
change(#2) [ self(#1).dead ]
use(Deflection:490) [ enemy(#3).active & enemy.ability(Flame Jet:1041).usable ]
use(Sandstorm:453) [ enemy.hp > 454 ]
use(Crush:406)
use(Deep Freeze:481) [ enemy.aura(Frost Shock:415).exists ]
use(Frost Shock:416) [ !enemy.aura(Frost Shock:415).exists ]
use(#1)
standby 
*/