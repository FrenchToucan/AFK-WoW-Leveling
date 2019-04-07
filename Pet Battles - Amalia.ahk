Loop
{
	Loop 1 ;	//Target Sir Galveston (for a full pet clear)
	{
		ControlSend,, 9, WoW1
    		Sleep 5000
	}	

	Loop 1 ;	//Approach Amalia
	{
    		ControlSend,, {w down}, WoW1
		sleep 1100
		ControlSend,, {w up}, WoW1
    		
	}
	Loop 1 ;	//Target Amalia
	{
		ControlSend,, 5, WoW1
    		Sleep 5000
	}
	Loop 1 ; 	//Interact with target
	{
    		ControlSend,, g, WoW1
    		Sleep 500
	}
	Loop 1 ;	//Select gossip option #1 (let's fight)
	{
		ControlSend,, 0, WoW1
    		Sleep 5000
	}
	Loop 100 ; 	//Press Auto button (tdbattlepetsscript required)
	{
		ControlSend,, a, WoW1
    		Sleep 1500
	}
	Loop 1 ; 	//wait x minutes then Revive Battle Pets
	{
		Sleep 100000
		ControlSend,, 8, WoW1
    	}


}