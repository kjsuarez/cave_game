/// @description determine where exits go

if(global.in_start_room){
	destination = global.first_room;
} else {
	if((global.current_zone_index) < ds_list_size(global.room_manifest[?"zones"])){	
		possible_destinations = global.room_manifest[?"zones"][|global.current_zone_index][?"rooms"]
		randomise();
		ds_list_shuffle(possible_destinations);
		var room_str = possible_destinations[|0];

		destination = asset_get_index(room_str);
	} else {
		show_debug_message("going to final room")
		destination = global.final_room;
		global.in_final_room = true;
	}	
}
