/// @description Insert description here

if(!squeezed){
	var new_y_position = y - 4 
	//sprite_index = player_spr;


	if (tile_meeting_precise(x, ceil(new_y_position), "collision_layer")){
	   //sprite_index = player_kneeling_spr;
	} else {
			y = new_y_position;
			kneeling = false;
	}

}



