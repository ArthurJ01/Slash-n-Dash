// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateDash(){

	start_x = x
	start_y = y
	show_debug_message("startx/y")
	show_debug_message(start_x)
	show_debug_message(start_y)
	
	if(!oPlayer.key_up_held)
	{
		if(playerDirection = 0)playerDirection = 1;
		hsp = hsp + oPlayer.playerDirection * dashsp
	}
	if(oPlayer.key_up_held)
	{
		hsp += oPlayer.playerDirection * dashsp
		vsp = -jumpdashsp
		
	}
	
	dashlength -= 1
	
	
	
	
//reverts state to free
	
	if (dashlength <0)
		{
			end_x = x
			end_y = y
			show_debug_message("endx/y")
			show_debug_message(end_x)
			show_debug_message(end_y)
			PlayerDashAngle(start_x, start_y, end_x, end_y)
			if(oPlayer.dashattack)PlayerDashAttack()
			vsp = .5*vsp
			state = PlayerStateFree
			dashlength = dashmaxlength
		
		}
		
		PlayerCollision();
}