
function PlayerStateFree(){

#region Movement
#region Horizontal Movement
if (key_left)
	{
		hsp -= acc;
	}

if (key_right)
	{
		hsp += acc;
	}

if (!key_left and !key_right)
	{
		hsp -= sign(hsp)*dec;	
	}

hsp = clamp(hsp, -walksp, walksp);

playerDirection = sign(hsp);

#endregion Horizontal Movement
#region Vertical Movement

vsp = vsp + grv;	
	

	
	if(!place_meeting(x, y,oWall)) and key_down{
		
	vsp = downsp	
	}
	
	
	if (place_meeting(x,y+1,oWall)){
		
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



#endregion Vertical Movement
#endregion Movement

#region change state
if (key_dash)

	{
		state = PlayerStateDash
	}
	
if(grapple)
{
	if(vsp > -.5 ) grapple_start = true
	if(place_meeting( x,y+1, oWall )) grapple_start = false
	if(grapple_start)
		{
			if(key_hook)
				{
				
					//hook initialisation 
					grapple_x = mouse_x;
					grapple_y = mouse_y;
					rope_x = x;
					rope_y = y;
					rope_angle_velocity = rope_start_multiplier*hsp;
					rope_angle = point_direction(grapple_x, grapple_y, x, y);
					rope_length = point_distance(grapple_x, grapple_y,x,y); 
						if(place_meeting(mouse_x,mouse_y,oWall) and distance_to_point(mouse_x, mouse_y) < max_hook_range)
							{
								if(!place_meeting(x,y+10, oWall))
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