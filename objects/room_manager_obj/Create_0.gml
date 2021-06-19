/// @description Advance room count

if((global.current_zone_index) < ds_list_size(global.room_manifest[?"zones"])){	
	if(global.current_room_count + 1 >= global.total_rooms_per_zone){
		global.current_room_count = 0;
		global.current_zone_index += 1;
	} else {
		global.current_room_count += 1;
	}

}
