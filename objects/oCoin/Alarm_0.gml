repeat(50)
{
	with(instance_create_layer(x,y, "Instances",oParticle))
		{
			direction = random_range(0,359)	
		
		}
	
}
instance_destroy();


