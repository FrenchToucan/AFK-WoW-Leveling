#Include ..\Functions.ahk

Loop
{
	Loop 3
	{
	reset_with_sir_galveston()
	
	approach()
	
	target(2)
	
	interact()
	
	gossip()
	
	auto_pet_fight(100,1500)
	
	revive_pets(15000)
	}
	reset_with_sir_galveston()

	approach()
	
	target(5)
	
	interact()
	
	gossip()
	
	auto_pet_fight(60,5000)
	
	revive_pets(15000)
}