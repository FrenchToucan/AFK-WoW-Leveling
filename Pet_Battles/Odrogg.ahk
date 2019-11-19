#Include Functions.ahk

Loop
{
	target(4)

	approachPlus()
	
	target(5)
	
	interact()
	
	gossip()
	
	auto_pet_fight(30,5000)
	
	revive_pets(60000)
}

/*
Pets
---------------------
Zandalari Anklerenderer 2 1 2
Albino River Calf 2 1 1
Zandalari Kneebiter 2 2 1

This doesn't match with ped script below. Relaly do this with all Zandalaris and a longer script. Check Xu.

tdBattlePetScript
---------------------
if [!enemy.ability(Stone Form:1466).usable]
change(#2) [!self(#2).played & self(#2).level<25]
change(#3) [!self(#3).played & self(#3).level<25]
endif
change(#1) [!self(#1).active]
use(Ravage:802) [round=1]
use(Dodge:312) [enemy(#1).active & enemy.round=6]
use(Dodge:312) [enemy(#2).active & enemy.round=2]
use(Dodge:312) [enemy(#3).active & enemy.round=3]
use(Ravage:802) [enemy(#1).active & enemy(#1).hp<926]
use(Ravage:802) [enemy(#2).active & enemy(#2).hp<520]
use(Ravage:802) [enemy(#3).active & enemy(#3).hp<926]
use(Claw:429) 
standby [self.aura(927).exists]
*/