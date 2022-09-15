show_debug_message(respawn_timer)

respawn_timer -= 1;

if(respawn_timer <= 0)
{
	instance_create_layer(x,y,"Instances", oEnemy)
	instance_destroy();
}
