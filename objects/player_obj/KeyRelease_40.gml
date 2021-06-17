/// @description Insert description here

var new_y_position = y - 16 
//sprite_index = player_spr;


if (tile_meeting_precise(x, ceil(new_y_position), "collision_layer") or tile_meeting_precise(x, ceil(new_y_position) + max_walk_height, "collision_layer")){
   //sprite_index = player_kneeling_spr;
} else {
		y = new_y_position;
		kneeling = false;
}

