
speed = (target_speed - speed) * .1



if(image_alpha <= 0)
{
	instance_destroy();	
}
if(!place_meeting(x,y,oWall))
{
	vsp += .4
	y += vsp
}


if(place_meeting(x,y,oWall))
{
	speed = 0;	
	destroy = true;
}



if (destroy)
{
	destroy_timer -= 1
	if(destroy_timer < 0)
	{
		image_alpha += (target_alpha - image_alpha) * 0.035	
	}
}
