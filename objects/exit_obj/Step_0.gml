/// @description transition to next room

if(transition_handler_obj.transition_state == "ready"){
	if((player_obj.x > x-45 && player_obj.x < x+45) && (player_obj.y > y-8 && player_obj.y < y+8)){
		transition_handler_obj.transition_state = "transitioning"
		transition_handler_obj.target_visible_radius = 0;
	}
} else {
	if(transition_handler_obj.transition_state == "finished"){
		if(sound_handler_obj.change_track){
			audio_stop_sound(sound_handler_obj.current_music_track);
		}
		if(global.in_start_room){
			global.in_start_room = false;
			audio_stop_all();
		}
		room_goto(destination);
	}
}

