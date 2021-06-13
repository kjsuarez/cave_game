/// @description transition to next room

if(transition_handler_obj.transition_state == "ready"){
	if((player_obj.x > x-30 && player_obj.x < x+30) && (player_obj.y > y-30 && player_obj.y < y+30)){
		transition_handler_obj.transition_state = "transitioning"
		transition_handler_obj.target_visible_radius = 0;
	}
} else {
	if(transition_handler_obj.transition_state == "finished"){
		if(global.current_room_count >= global.total_rooms){
			room_goto(global.final_room);
		} else {
			global.current_room_count += 1;
			room_goto(destination);
		}
	}

}
