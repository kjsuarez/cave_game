/// @description Insert description here
if((player_obj.x > x-(x_range/2) && player_obj.x < x+(x_range/2)) && (player_obj.y > y-(y_range/2) && player_obj.y < y+(y_range/2))){
	show_debug_message("squeezed");
	player_obj.squeezed = true;
	player_obj.squeeze_coefficient = squeeze_coefficient;
	player_obj.squeeze_direction = squeeze_direction;
}