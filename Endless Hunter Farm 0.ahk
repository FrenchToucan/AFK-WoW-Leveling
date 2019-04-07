Loop
{
	Loop 50 ; 
	{
    		ControlSend,, 1, WoW0
    		Sleep 500
	}
	Loop 2 ;
	{
		ControlSend,, 2, WoW0
    		Sleep 1000
	}
	Loop 3 ; 
	{
    		ControlSend,, 4, WoW0
    		Sleep 500
	}
	Loop 1 ; 
	{
    		ControlSend,, 8, WoW0
    		Sleep 500
	}
}