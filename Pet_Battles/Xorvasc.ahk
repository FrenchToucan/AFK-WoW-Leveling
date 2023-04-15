#Include Functions.ahk

Loop
{
	reset_with_trixy()
	
	approach_xorvasc()
	
	target(3)
	
	interact()
	
	gossip()
	
	auto_pet_fight(40,7000)
	
	revive_pets(200000)
}

/*
Pets
---------------------
Anubisath Idol 1 1 1
Sunborne Val'kyr 1 2 2
Father Winter's Helper 1 1 1 (This isn't built into the script. Any Humanoid will do here but he will fight)

tdBattlePetScript
---------------------
change(#1) [self(#2).dead]
change(#2) [self(#1).dead]
change(next) [self.dead]
use(Deflection:490) [round=2]
use(Deflection:490) [enemy(Globs:1846).ability(Expunge:450).usable]
use(Restoration:770) [self.hp<=1099]
use(#2)
use(#1)
*/