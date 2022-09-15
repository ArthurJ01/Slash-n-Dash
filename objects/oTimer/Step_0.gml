

if(live)
{	
	if(keyboard_check_pressed(vk_anykey) or mouse_check_button_pressed(mb_any))
	{
		timer = true;		
	}
}
else
{
	timer = false;	
}

if(timer)
{
	seconds += (delta_time*0.000001)*room_speed;
	
	if seconds >= 60
	{
		seconds -= 60;
		minutes += 1;
	}
}
x = oPlayer.x - 50;
y = oPlayer.y - 100;
