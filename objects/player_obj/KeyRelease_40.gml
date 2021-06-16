/// @description Insert description here

var new_y_position = y - 8 
sprite_index = player_spr;


if (tile_meeting_precise(x - 8, ceil(new_y_position + .5), "collision_layer")){
   sprite_index = player_kneeling_spr;
} else {
	x -= 8;
	y -= 8;
	kneeling = false;
}

