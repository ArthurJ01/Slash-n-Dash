


///Orbit Code
//in each step the orbiting object adjusts to the proper position
if instance_exists(orbit_target) 
{
		
	//if(abs(sqrt(distance_to_point(orbit_target.x,mouse_x)^2 + distance_to_point(orbit_target.y, mouse_y)^2)) < abs(sqrt(oPlayer.max_hook_range)^2)) 

	//{
		//x=orbit_target.x + lengthdir_x(distance_to_point(orbit_target.x,mouse_x), orbit_place);
		//y=orbit_target.y + lengthdir_y(distance_to_point(orbit_target.y,mouse_y), orbit_place);
		//orbit_place = point_direction(orbit_target.x, orbit_target.y, mouse_x, mouse_y)
		
		//show_debug_message(counter)
	//	counter += 1;
		
	//}
	
	//else
//	{

if(!stop)
{
		x=orbit_target.x + lengthdir_x(orbit_length, orbit_place);
		y=orbit_target.y + lengthdir_y(orbit_length, orbit_place);
		orbit_place = point_direction(orbit_target.x, orbit_target.y, mouse_x, mouse_y)
}
//	}
}
else if !instance_exists(orbit_target) 
{
	instance_destroy()
}

