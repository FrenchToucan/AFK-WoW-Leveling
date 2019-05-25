#Include Functions.ahk

Loop
{

	Stand_Close_Message()

	reset_with_amalia()
	
	target(8)
	
	interact()
	
	gossip()
	
	auto_pet_fight(40,5000)
	
	revive_pets(280000)
}

/*
Add pet and ability info

use(Black Claw:919) [!enemy.aura(Black Claw:918).exists]
use(Hunting Party:921)
use(Leap:364)
change(#2) [enemy.aura(Mysterious Egg:1593).exists]
change(#3)
use(Black Claw:919) [!enemy.aura(Black Claw:918).exists]
use(Hunting Party:921)
use(Leap:364)
*/