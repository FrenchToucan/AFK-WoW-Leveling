#Include Functions.ahk

Loop
{
	exit_time_header

	reset_with_sir_galveston()
	
	approach()
	
	target(2)
	
	interact()
	
	gossip()
	
	auto_pet_fight(100,1500)
	
	revive_pets(90000)

	exit_time_footer
}

/*
List pets and abilities.

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