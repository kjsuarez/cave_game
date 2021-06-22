/// @description Insert description here
start_track = start_screen_music_snd;
end_track = zone_4_music_snd;

zone_tracks = [
	zone_1_music_snd, 
	zone_2_music_snd, 
	zone_3_music_snd,
	zone_4_music_snd
];

show_debug_message("total number of zones:" + string(ds_list_size(global.room_manifest[?"zones"])));
show_debug_message("current zone: " + string(global.current_zone_index));

if(global.in_final_room){
	show_debug_message("sound handler thinks it's in the final room")
	room_sound = audio_play_sound(end_track, 10, true);

} else if(global.in_start_room && !audio_is_playing(zone_4_music_snd)) { 
	show_debug_message("sound handler thinks it's in the start room")
	change_track = false
	if(!audio_is_playing(zone_4_music_snd)){
		room_sound = audio_play_sound(start_track, 10, true);
	}
} else {
	
	current_music_track = zone_tracks[global.current_zone_index];

	change_track = (global.current_room_count + 1 >= global.total_rooms_per_zone);	
	show_debug_message("room count: " + string(global.current_room_count));
	show_debug_message("rooms per zone: " + string(global.total_rooms_per_zone));
	if(global.current_room_count == 0 || (room == global.first_room)){
		show_debug_message("sound handler thinks it's in the first room of a zone")
		show_debug_message("playing new track");

		room_sound = audio_play_sound(current_music_track, 10, true);	
	}
	show_debug_message("+++");
}


