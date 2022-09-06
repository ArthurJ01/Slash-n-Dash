if hit 
{
	y += (target-y)*.1;	
	apex -= 1
	if(!audio_is_playing(sMoney) and !audio_has_played)
	{
		audio_play_sound(sMoney,1,0);
		audio_has_played = true;
	}
}

if apex < 0
{
	image_speed += (target_ispeed - image_speed) * 0.1;	
}


