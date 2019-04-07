Loop
{
	Loop 1 ;	//Target Amalia (for a full pet clear) - make sure macro is set
	{
		ControlSend,, 5, World of Warcraft
    		Sleep 5000
	}	

	/* No knockback after battle completed
	Loop 1 ;	//Approach target
	{
    		ControlSend,, {w down}, World of Warcraft
		sleep 1100
		ControlSend,, {w up}, World of Warcraft
    		
	}
	*/
	Loop 1 ;	//Target Sir Heliosus - make sure macro is set
	{
		ControlSend,, 7, World of Warcraft
    		Sleep 1000
	}
	Loop 1 ; 	//Interact with target
	{
    		ControlSend,, g, World of Warcraft
    		Sleep 500
	}
	Loop 1 ;	//Select gossip option #1 (let's fight)
	{
		ControlSend,, 0, World of Warcraft
    		Sleep 5000
	}
	Loop 60 ; 	//Press Auto button (tdbattlepetsscript required)
	{
		ControlSend,, a, World of Warcraft
    		Sleep 1500
	}
	Loop 1 ; 	//wait 7:15 then Revive Battle Pets
	{
		Sleep 435000
		ControlSend,, 8, World of Warcraft
    	}


}

/*
use(Black Claw:919) [!enemy.aura(Black Claw:918).exists]
use(Hunting Party:921)
use(Leap:364)
change(#2) [enemy.aura(Mysterious Egg:1593).exists]
change(#3)
use(Black Claw:919) [!enemy.aura(Black Claw:918).exists]
use(Hunting Party:921)
use(Leap:364)
*/