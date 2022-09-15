
oGrappleWall.image_index = 0;

with(instance_nearest(mouse_x,mouse_y,oGrappleWall))
{
	if(point_distance(mouse_x,mouse_y,x,y) < oPlayer.max_hook_range and point_distance(oPlayer.x,oPlayer.y,x,y) < oPlayer.max_hook_range)
	{
		image_index = 1;	
		oCursor.stop = true
		oCursor.x = x
		oCursor.y = y
	}
	else oCursor.stop = false
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

