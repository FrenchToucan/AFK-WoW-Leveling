#Include %A_ScriptDir%/Functions.ahk

Loop
{
	reset_with_egcellent()
	
	approach()
	
	target(7)
	
	interact()
	
	gossip()
	
	auto_pet_fight(40,7000)
	
	revive_pets(240000)
}

/*
Pets
---------------------
Anubisath Idol 1 1 1
Kun-Lai Runt 2 2 2
Any Lvl 25

tdBattlePetScript
---------------------
if [self(#1).dead]
change(#2)
endif

if [self(#2).dead]
change(#1)
endif

if [self(#2).dead && self(#1).dead]
change(#3)
endif

if [enemy(#1).active && self(#1).active]
use(#2)
use(#1)
standby
endif

if [enemy(#2).active]
change(#2) [round <= 14 && enemy.hp<800]
use(#2)
use(#1)
endif

if [enemy(#3).active]
change(#2) [enemy(#2).dead]
change(#1) [self.round = 3]
use(#3) [enemy.aura(Frostschock:415).exists]
use(#2)
endif

use(#3)
use(#1)