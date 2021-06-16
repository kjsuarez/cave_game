/// @description Insert description here
/// @description Insert description here

global.total_rooms_per_zone = 3;
global.total_rooms = 3;
//global.first_room = test_room_1;
global.first_room = zone_3_room_1;
global.final_room = last_room;

global.room_manifest = load_json("room_manifest.json");
global.current_zone_index = 0;
global.current_room_count = 0;

room_goto(global.first_room);