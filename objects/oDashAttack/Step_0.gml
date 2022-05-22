if(frame1)
{
	frame1 = false;
	image_xscale = oPlayer.playerDirection
	if(oPlayer.key_up_held)
	{
		if(image_xscale = 1)
		{
			image_angle = 40
		}
		if(image_xscale = -1)
		{
			image_angle = -40
		}
		
	}
}

buffer -= 1

if (buffer <= 0) instance_destroy()
	
if(image_index = 2)
{
	image_speed = 0;
}

