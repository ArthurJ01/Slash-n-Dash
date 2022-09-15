
if(first_frame)
{
	audio_play_sound_at(sPoison, x, y, 0, 5, 100, 1, 1, 1);
	first_frame = false;
	show_debug_message("Wahoo")
}

