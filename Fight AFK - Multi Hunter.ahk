#2::
Hotkey, q, toggle
return

#1::
Loop
{
	Loop 40 ; 
	{
    		ControlSend,, 1, WoW0
		ControlSend,, 1, WoW1
    		Sleep 500
	}
	Loop 2 ; 
	{
    		ControlSend,, 2, WoW0
		ControlSend,, 2, WoW1
    		Sleep 1000
	}
	Loop 1 ;
	{
		ControlSend,, 4, WoW0
		ControlSend,, 4, WoW1
    		Sleep 500
	}
	Loop 2 ;
	{
		ControlSend,, 8, WoW0
		ControlSend,, 8, WoW1
    		Sleep 2000
	}

}