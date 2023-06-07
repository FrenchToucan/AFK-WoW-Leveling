#Include %A_ScriptDir%\..\..\Functions.ahk

Loop
{
	target(2) ; Target Battery for clear
	
	approachPlus()
	
	target(3)
	
	interact()
	
	gossip()
	
	auto_pet_fight(30,5000)
	
	revive_pets(10000)
}

/*
Pets
---------------------
Father Winter's Helper 2 1 1
Winter's Little Helper 2 1 1
Winter's Little Helper 2 1 1

tdBattlePetScript
---------------------
ability(Ice Tomb:624) [round=1]
ability(Ice Tomb:624) [enemy(#3).active & enemy.round=1]
ability(Call Blizzard:206) [weather(Blizzard:205).duration<2]
ability(Ice Lance:413)
change(next)
*/