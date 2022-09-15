
if(!instance_exists(oCursor))
{
	instance_create_layer(x,y,"UI",oCursor)	
}

oGrappleWall.image_index = 0;

with(oPlayer)
{
	if(distance_to_point(instance_nearest(mouse_x,mouse_y, oGrappleWall).x, instance_nearest(mouse_x,mouse_y, oGrappleWall).y) < max_hook_range)
	{
		can_hook = true	
	}
	else
	{
		can_hook = false	
	}
}

with(instance_nearest(mouse_x,mouse_y,oGrappleWall))
{
	//point_distance(mouse_x,mouse_y,x,y) < oPlayer.max_hook_range and point_distance(oPlayer.x,oPlayer.y,x,y) < oPlayer.max_hook_range
		
	if(oPlayer.can_hook)
	{
		image_index = 1;	
		oCursor.stop = true
		oCursor.x = x
		oCursor.y = y - oGrappleWall.sprite_height/2
		oCursor.image_xscale = 3
		oCursor.image_yscale = 3
	}
	else
	{
		oCursor.stop = false
		oCursor.image_xscale = 1
		oCursor.image_yscale = 1
	}
}

#region fullscreen

if keyboard_check_pressed(vk_escape)
{
    if window_get_fullscreen()
    {
        window_set_fullscreen(false);
    }
    else
    {
        window_set_fullscreen(true);
    }
}

#endregion fullscreen

