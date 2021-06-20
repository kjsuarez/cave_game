/// @description Insert description here
if(grounded){
	kneeling = true;
	if !tile_meeting_precise(x, y + 1, "collision_layer"){
		y += 4;
	} else {
	if tile_meeting_precise(x, y,"collision_layer"){
		for ( i=0 ; i<6 ; i++ ){
			if !tile_meeting_precise(x + i, y, "collision_layer"){
				x += i;
			}
		}
		for ( i=0 ; i<6 ; i++ ){
			if !tile_meeting_precise(x - i, y, "collision_layer"){
				x -= i;
			}
		}
	}
	}
	//sprite_index = player_kneeling_spr;
}
