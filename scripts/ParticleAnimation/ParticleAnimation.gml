
// in create: destroy = false;
// in create: vsp = 0;

//stops the obj when touching wall after which it will destroy the obj after a set period of time
//fixes speed only needs direction

function ParticleAnimation(targetSpeed, targetAlpha, destroyTimer )
{
	
	
speed = (targetSpeed - speed) * .1



if(image_alpha <= 0)
{
	instance_destroy();	
}



if(place_meeting(x,y,oWall))
{
	speed = 0;	
	destroy = true;
}

	
y += vsp;
	

if (destroy)
{
	destroyTimer -= 1
	if(destroyTimer <= 0)
	{
		image_alpha += (targetAlpha - image_alpha) * 0.035	
	}
}


}


