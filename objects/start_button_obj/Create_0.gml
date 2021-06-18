/// @description Insert description here
global.total_rooms_per_zone = 1;
global.total_rooms = 1;
//global.first_room = test_room_1;
global.first_room = zone_2_room_1;
global.final_room = last_room;
global.in_final_room = false;
global.in_start_room = true;

global.room_manifest = load_json("room_manifest.json");
global.current_zone_index = 0;
global.current_room_count = 0;

instance_create_layer(0,0,"Instances",camera_obj);