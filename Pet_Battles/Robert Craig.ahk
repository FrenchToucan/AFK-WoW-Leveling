#Include Functions.ahk

Loop
{
	reset_with_fargo()
	
	approach()
	
	target(4)
	
	interact()
	
	gossip()
	
	auto_pet_fight(34,6000)
	
	revive_pets(30000)
}

/*
Pets
---------------------
Iron Starlette 1 2 x
Winter's Little Helper 1 1 1
Father Winter's Helper 2 1 2 (This slot shouldn't matter. Little if any action.)

tdBattlePetScript
---------------------
standby [self.aura(Crystal Prison:734).exists]
ability(Toxic Smoke:640) [round=1]
ability(Wind-Up:459) [round=2]
ability(Wind-Up:459) [round=3]
ability(Call Blizzard:206)
ability(Ice Tomb:624)
ability(Bubble:934)
ability(Frost Shock:416) [self.speed.slow]
ability(Gift of Winter's Veil:586)
ability(#1)
change(next)
*/