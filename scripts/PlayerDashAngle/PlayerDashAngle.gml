// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerDashAngle(x1, y1, x2, y2){

	var hypoX = sqr((x2-x1))
	var hypoY = sqr((y2-y1))
	hypothenuse = sqrt(hypoX + hypoY)
	adjacent = x2-x1
	
	var ArcCos = adjacent/hypothenuse
	
	angle = darccos(ArcCos)

}