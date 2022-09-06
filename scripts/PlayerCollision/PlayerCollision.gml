function PlayerCollision(){
#region horizontal collision
	
	
	if (place_meeting(x+hsp, y, oWall))
	{
		
		while (!place_meeting(x+sign(hsp), y, oWall))
		{
		   x+=sign(hsp);
	    }
		
		

		if (state == PlayerStateSwing)
		{
			rope_angle = point_direction(grapple_x, grapple_y, x, y);
			rope_angle_velocity = 0;
		}
			hsp=0;
		
	}
		
		x += hsp;
		
#endregion horizontal collision
#region vertical collision

	if (place_meeting(x, y + vsp, oWall))
	{	
		
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
		
			y = y + sign(vsp);
		}
		
		if (state == PlayerStateSwing)
		{
			rope_angle = point_direction(grapple_x, grapple_y, x, y);
			rope_angle_velocity = 0;
		}
			vsp = 0;
			post_dash = false; //for air deceleration after a dash, true will enable low drag
	}
	
	y += vsp;
#endregion vertical collision
}