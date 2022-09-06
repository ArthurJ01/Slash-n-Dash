// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateMouseDash(){
	
	if(first_frame)
	{
		var dir = round(point_direction(x,y,mouse_x,mouse_y));
		
		hsp += round(lengthdir_x(dashdistance,dir));
		vsp += round(lengthdir_y(dashdistance,dir));
		
		
		dash_x = mouse_x;
		dash_y = mouse_y;
		first_frame = false;
	}
	
	
	if(dashlength>=0)
	{
		dashlength -= 1;
		
		
		
	}
	else
	{
		
		first_frame = true
		dashlength = dashmaxlength 
		post_dash = true;
		vsp = round(vsp*vsp_post_dash_dec)
		state = PlayerStateFree
		
		if(oPlayer.dashattack)PlayerDashAttack()
	}
	PlayerCollision();
}