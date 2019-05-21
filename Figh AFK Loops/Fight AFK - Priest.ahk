Loop
{
	Loop 50 ; //GSE single target
	{
    		ControlSend,, 1, WoW0
    		Sleep 500
	}
	Loop 1 ; //Clear target
	{
		ControlSend,, 3, WoW0
	}
	Loop 3 ; //Heal
	{
    		ControlSend,, 4, WoW0
    		Sleep 1000
	}	
	Loop 50 ; //GSE Single Target
	{
    		ControlSend,, 1, WoW0
    		Sleep 500
	}	
	Loop 3 ; //Heal
	{
    		ControlSend,, 4, WoW0
    		Sleep 1000
	}	
	Loop 1 ; //Shield
	{
		ControlSend,, 2, WoW0
    		Sleep 500
	}
	Loop 1 ; //target last
	{
		ControlSend,, 5, WoW0
		Sleep 500
	}
	Loop 1 ; //Interact w/ target (to complete loot)
	{
		ControlSend,, G, WoW0
		Sleep 500
	}

}