with(other)
	{
		instance_destroy();
		instance_create_layer(x,y,"Instances", oDeathAnimation)
	}
	
	audio_play_sound(sDeathSound,1,0)
