#Include %A_ScriptDir%\..\..\Functions.ahk

Loop
{
	target(6)
	
	approachPlus()
	
	target(7)
	
	interact()
	
	gossip()
	
	auto_pet_fight(34,6000)
	
	revive_pets(1000)
}

/*
Pets
---------------------
Mechanical Axebeak 1 1 1
Albino River Calf X 1 1
Nether Faerie Dragon 2 2 1

tdBattlePetScript
---------------------
if [ self(#1).active ]
ability(#3)
change(#3) [ enemy(#1).active ]
ability(#2) [ enemy(#2).active & !self.aura(520).exists ]
ability(#1) [ enemy(#2).active ]
ability(#1)
endif
if [ self(#2).active ]
change(#3) [ self(#2).active & enemy(#2).active ]
endif
if [ self(#3).active ]
ability(#2) [ enemy(#1).active ]
ability(#3) [ enemy(#1).active & enemy.hpp > 50 ]
ability(#1) [ enemy(#1).active ]
ability(#2) [ enemy(#2).active & self.hpp < 70 ]
change(#1) [ self(#3).dead & enemy(#2).active ]
endif
if [ self(#3).dead ]
change(#2)
ability(#3)
ability(#2)
endif
ability(#1)
*/