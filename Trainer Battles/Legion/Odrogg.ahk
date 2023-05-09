#Include %A_ScriptDir%\..\..\Functions.ahk

Loop
{
	target(8)

	approachPlus()
	
	target(5)
	
	interact()
	
	gossip()
	
	auto_pet_fight(30,7000)
	
	revive_pets(15000)
}

/*
Pets
---------------------
Teroclaw Hatchling 1 1 2
Leveling Pet (any level)
Leveling Pet (any level)

tdBattlePetScript
---------------------
use(Ravage:802) [ round=1 ]
change(#2) [ round=3 ]
change(#3) [ round=4 ]
change(#1) [ round=5 ]
use(Dodge:312) [ round=6 ]
use(Dodge:312) [ enemy.aura(Underwater:830).exists ]
standby [ enemy(#2).active & enemy.round<3 & enemy.aura(Shell Shield:309).exists & self.aura(Dodge:311).exists ]
use(Ravage:802) [ enemy.hp<521 & enemy(#2).active & enemy.round<6 ]
use(Ravage:802) [ enemy.hp<382 & enemy.aura(Shell Shield:309).exists ]
use(Ravage:802) [ enemy.hp<463 & !enemy.aura(Shell Shield:309).exists & enemy(#2).active ]
use(Dodge:312) [ enemy.ability(Headbutt:376).usable & enemy.aura(Shell Shield:309).exists ]
use(Ravage:802) [ !enemy.ability(Dive:564).usable & enemy.hp<926 ]
use(Ravage:802) [ !enemy.aura(Underwater:830).exists & enemy.hp<926 & !enemy(#2).active ]
use(Claw:429)
standby [ self.aura(Stunned:927).exists ]
quit [ self(#1).dead ]
*/