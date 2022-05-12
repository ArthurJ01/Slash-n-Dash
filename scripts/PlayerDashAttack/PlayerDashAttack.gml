// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerDashAttack(){
	
	
	instance_create_layer(oPlayer.x, oPlayer.y, "Instances", oDashAttack)
	
	var my_track = audio_play_sound(sSlash, 0, false)
	audio_sound_set_track_position(my_track, 1.1)
	


}