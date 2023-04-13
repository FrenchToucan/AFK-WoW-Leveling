Loop
{
	Loop 30 ; 
	{
    		ControlSend,, 1, World of Warcraft
    		Sleep 500
	}
	Loop 2 ;
	{
		ControlSend,, 2, World of Warcraft
    		Sleep 1000
	}
	Loop 2 ; 
	{
    		ControlSend,, 4, World of Warcraft
    		Sleep 500
	}
	Loop 1 ; 
	{
    		ControlSend,, {d down}, World of Warcraft
    		Sleep 500
    		ControlSend,, {d up}, World of Warcraft
	}
}