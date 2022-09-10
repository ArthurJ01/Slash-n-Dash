with(other)
	{
		instance_destroy();
		instance_create_layer(x,y,"Instances", oDeathAnimation)
		repeat(50)
		{
			with(instance_create_layer(x,y, "Instances",oBloodParticle))
			{
				direction = random_range(0,359)	
		
			}
		}
	}

oPlayer.dashCD = false;

	audio_play_sound(sDeathSound,1,0)
