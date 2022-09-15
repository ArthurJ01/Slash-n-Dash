repeat(30)
{
	with(instance_create_layer(x,y,"Instances",oBloodParticle))
	{
		direction = random_range(30,150)	
	}
}



if(audio_is_playing(sDeathSound))
{
	DeathSoundPrio -= 1	
}

audio_play_sound(sDeathSound,DeathSoundPrio,0) 


instance_destroy();
