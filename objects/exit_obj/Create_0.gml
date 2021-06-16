/// @description determine where exits go

show_debug_message("current zone index " + string(global.current_zone_index));
show_debug_message("current room:" + string(global.current_room_count) + " out of");
show_debug_message("total rooms per zone:" + string(global.total_rooms_per_zone));
show_debug_message("total number of zones:" + string(ds_list_size(global.room_manifest[?"zones"])));

if((global.current_zone_index + 1) < ds_list_size(global.room_manifest[?"zones"])){	
	possible_destinations = global.room_manifest[?"zones"][|global.current_zone_index][?"rooms"]
	randomise();
	ds_list_shuffle(possible_destinations);
	var room_str = possible_destinations[|0];

	destination = asset_get_index(room_str);
} else {
	destination = global.final_room;
}

// advance room count
if(global.current_room_count >= global.total_rooms_per_zone){
	global.current_room_count = 0;
	global.current_zone_index += 1;
} else {
	global.current_room_count += 1;
}








/*
possible_destinations = load_json("room_manifest.json")[?"zones"][|0][?"rooms"]
show_debug_message("look here: " + string(possible_destinations));
randomise();
ds_list_shuffle(possible_destinations);
var room_str = possible_destinations[|0];

destination = asset_get_index(room_str);
*/