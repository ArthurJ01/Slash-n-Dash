with(other)
	{
		instance_destroy();
		//instance_create_layer(x,y,"Instances", oDeathAnimation)
		instance_create_layer(x,y,"Instances", oRespawner)
		repeat(oDashAttack.ParticleAmount)
		{
			with(instance_create_layer(x,y, "Instances",oBloodParticle))
			{
				direction = random_range(0,359)	
		
			}
		}
		repeat(2)
		{
				with(instance_create_layer(x,y, "Instances",oEnemyDead))
				{
					direction = random_range(0,359)	
				}
		}
		
	}

oPlayer.dashCD = false;

	audio_play_sound(sDeathSound,1,0)
