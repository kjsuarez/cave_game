/// @description Insert description here
if(squeezed && squeeze_coefficient == 0 && transition_handler_obj.transition_state != "transitioning"){
	if(struggle_counter < struggle_max){
		camera_obj.x_offset = -20;
		transition_handler_obj.transition_state = "transitioning"
		var new_radius = transition_handler_obj.max_radius - (transition_handler_obj.max_radius * (struggle_view_radius_percentages[struggle_counter]));
		transition_handler_obj.target_visible_radius = new_radius;
		struggle_counter += 1;
	} else {
		room_goto(game_start_room);
	}
}
