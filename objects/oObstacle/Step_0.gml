if(irandom_range(1,100) <= 5)
{
	with(instance_create_layer(x,y,"Instances",oPoisonParticle))
	{
		direction = random_range(70,110)	
	}
}
