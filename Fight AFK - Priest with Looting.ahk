Loop
{
	Loop 50 ; 
	{
    		ControlSend,, 1, WoW0
    		Sleep 500
	}
	Loop 1 ;
	{
		ControlSend,, 3, WoW0
	}
	Loop 3 ;
	{
    		ControlSend,, 4, WoW0
    		Sleep 1000
	}	
	Loop 50 ; 
	{
    		ControlSend,, 1, WoW0
    		Sleep 500
	}	
	Loop 3 ; 
	{
    		ControlSend,, 4, WoW0
    		Sleep 1000
	}	
	Loop 1 ;
	{
		ControlSend,, 2, WoW0
    		Sleep 500
	}
	Loop 1 ;
	{
		ControlSend,, 5, WoW0
		Sleep 500
	}
	Loop 1 ;
	{
		ControlSend,, G, WoW0
		Sleep 500
	}

}