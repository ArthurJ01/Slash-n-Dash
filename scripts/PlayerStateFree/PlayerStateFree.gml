
function PlayerStateFree(){

#region Movement
#region Horizontal Movement
//if (key_left)
//	{
//		hsp -= acc;
//	}

//if (key_right)
//	{
//		hsp += acc;
//}

var dir = key_right - key_left;


hsp += dir * acc;

if key_right and key_left hsp = 0;

if (!key_left and !key_right and place_meeting(x,y+sprite_height/2,oWall)) //decelerate when grounded
	{
		hsp -= sign(hsp)*dec;	
	}
	
if (!key_left and !key_right and !place_meeting(x,y+sprite_height/2,oWall) and !post_dash) //decelerate when in air (not after dash)
	{
		hsp -= sign(hsp)*air_dec	
	}
	
	if (!key_left and !key_right and !place_meeting(x,y+sprite_height/2,oWall) and !post_dash) //decelerate when in air (less since after dash)
	{
		hsp -= sign(hsp)*air_dec_dash	
	}
hsp += hsp_frac;
vsp += vsp_frac;
hsp_frac = frac(hsp);
vsp_frac = frac(vsp);
hsp -= hsp_frac;
vsp -= vsp_frac;


hsp = clamp(hsp, -walksp, walksp);

playerDirection = sign(hsp);

#endregion Horizontal Movement
#region Vertical Movement

vsp = vsp + grv;	
	

	
	if(!place_meeting(x, y,oWall)) and key_down{
		
	vsp = downsp	
	}
	
	
	if (place_meeting(x,y+1,oWall))
		{
		
			jumps = jumpsmax;
		}
		
	if(key_up and jumps > 0){
	
	is_jumping = true
	jumps -= 1;
	vsp = -jumpsp
	
	
	}
	
	
	
	if(vsp < 0 and !key_up_held and is_jumping) 
	{
		vsp = max(vsp, -jumpsp/2);
		is_jumping = false;
	}
		
	
		
	if(hsp != 0){image_xscale = sign(hsp)}

	vsp = clamp(vsp, -jumpsp, jumpsp);

#endregion Vertical Movement
#endregion Movement

#region change state

if (dashCD = true)
{
	if(place_meeting(x,y+sprite_height/2,oWall))
		{
			dashCD = false	
		}
}

//if (dashCDtimer < 0)
//{
//	dashCD = false
//	dashCDtimer = dashCDtimerReset
//}
if (key_dash and dashCD = false)

	{
		//state = PlayerStateDash
		vsp = 0;
		state = PlayerStateMouseDash
		dashCD = true
	}
	
if(grapple)
{
	if(vsp > -.5 ) grapple_start = true
	if(place_meeting( x,y+1, oGrappleWall )) grapple_start = false
	if(grapple_start)
		{
			if(key_hook)
				{
				
					//hook initialisation 
					grapple_x = instance_nearest(mouse_x,mouse_y, oGrappleWall).x;
					grapple_y = instance_nearest(mouse_x,mouse_y, oGrappleWall).y;
					rope_x = x;
					rope_y = y;
					rope_angle_velocity = rope_start_multiplier*hsp;
					rope_angle = point_direction(grapple_x, grapple_y, x, y);
					rope_length = point_distance(grapple_x, grapple_y,x,y); 
						if(distance_to_point(instance_nearest(mouse_x,mouse_y, oGrappleWall).x, instance_nearest(mouse_x,mouse_y, oGrappleWall).y) < max_hook_range)
							{
								if(!place_meeting(x,y+sprite_height/2, oWall))
									{
										state = PlayerStateSwing;
										grapple_start = false;
									}
							}
				}
				
		
		}
}

#endregion change state





PlayerCollision();
}