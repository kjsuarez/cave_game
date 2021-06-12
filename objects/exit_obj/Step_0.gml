/// @description transition to next room



if((player_obj.x > x-10 && player_obj.x < x+10) && (player_obj.y > y-10 && player_obj.y < y+10)){
	room_goto(destination);
}
