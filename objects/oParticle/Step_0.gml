
speed = (target_speed - speed) * .1

image_alpha += (target_alpha - image_alpha) * 0.035

if(image_alpha <= 0)
{
	instance_destroy();	
}
