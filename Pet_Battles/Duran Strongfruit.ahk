#Include C:\Users\Mike\Documents\GitHub\AHK-Pet-Battle-Leveling\Pet_Battles\Functions.ahk

Loop
{
	target(2)
	
	approach()
	
	target(3)
	
	interact()
	
	//gossip()
	SendEvent, {Space}
	
	auto_pet_fight(22,5000)
	
	revive_pets(50000)
}

/*
Pets
---------------------
Fishy 1 1 2
Level (any?) <- level 1s always die right off the bat
Chrominius * 1 2

tdBattlePetScript
---------------------
change(next) [ self(#1).dead & !self(#3).played ]
standby [ self(#1).active & enemy(#3).active ]
ability(Pump:297) [ enemy.round=1 ]
ability(Cleansing Rain:230) [ !weather(Cleansing Rain:229) ]
ability(Howl:362)
ability(Surge of Power:593)
ability(#1)
*/