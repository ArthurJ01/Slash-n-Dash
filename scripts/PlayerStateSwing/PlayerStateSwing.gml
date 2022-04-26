// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateSwing(){

		
				var _rope_angle_acceleration = rope_acc * dcos(rope_angle);
				rope_angle_velocity += _rope_angle_acceleration;
				rope_angle += rope_angle_velocity;
				rope_angle_velocity *= rope_dec
	
				rope_x = grapple_x + lengthdir_x(rope_length, rope_angle);
				rope_y = grapple_y + lengthdir_y(rope_length, rope_angle);
	
	
				
				hsp = rope_x - x;
				vsp = rope_y - y;
				
				
					
				var hspd = hsp
		
				if(key_hook_released)
					{
						grapple_start = false
						state = PlayerStateFree
						hsp = hspd
				
					}
					
			
					
	PlayerCollision();
}	