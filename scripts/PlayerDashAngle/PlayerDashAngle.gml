// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerDashAngle(x1, y1, x2, y2){

	hypothenuse = sqrt((x2-x1)^2+(y2-y1)^2)
	adjacent = x2-x1
	
	show_debug_message("hypothenuse:")
	show_debug_message(hypothenuse)
	show_debug_message("adjacent")
	show_debug_message(adjacent)
	
	//angle = arccos(adjacent/hypothenuse)

}