#region input

	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_down = keyboard_check(ord("S"));
	key_up = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space);
	key_up_held = keyboard_check(ord("W")) or keyboard_check(vk_space);
	//key_attack = keyboard_check_pressed(vk_space);
	key_dash = mouse_check_button_pressed(mb_right);
	key_hook = mouse_check_button(mb_left)
	key_hook_released = mouse_check_button_released(mb_left)
	
	if(keyboard_check(ord("R"))) game_restart();

	
#endregion input

audio_listener_position(x,y,0)

state();

