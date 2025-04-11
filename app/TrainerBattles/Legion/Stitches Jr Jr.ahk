#Include %A_ScriptDir%\..\..\Functions.ahk

Loop
{
	reset_with_amalia()
	
	target(7)
	
	interact()
	
	auto_pet_fight(30,5000)
	
	revive_pets(100000)
}


/*
Iron Starlet 1 1 1
Iron Starlet 1 1 1
Any

standby [enemy.aura(Undead:242).exists]
ability(Supercharge) [self.aura(Wind-Up:458).exists]
ability(Wind-Up)
change(next)
*/