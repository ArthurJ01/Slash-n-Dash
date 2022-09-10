
oGrappleWall.image_index = 0;

with(instance_nearest(mouse_x,mouse_y,oGrappleWall))
{
	if(point_distance(mouse_x,mouse_y,x,y) < oPlayer.max_hook_range and point_distance(oPlayer.x,oPlayer.y,x,y) < oPlayer.max_hook_range)
	{
		image_index = 1;	
	}
}
