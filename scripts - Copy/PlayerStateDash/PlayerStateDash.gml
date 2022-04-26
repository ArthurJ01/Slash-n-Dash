// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateDash(){


	hsp = hsp + oPlayer.playerDirection * dashsp
	
	dashlength -= 1
	
	if (dashlength <0)
		{
	
			state = PlayerStateFree
			dashlength = dashmaxlength
		
		}
		
		PlayerCollision();
}