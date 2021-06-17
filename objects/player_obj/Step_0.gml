experience_gravity()

set_character_frame()

frame_velocity = (1 + (keyboard_check(ord("Z")) && !kneeling)) * ( 0 + keyboard_check(vk_right) - keyboard_check(vk_left)) ;
if(squeezed){
	frame_velocity = frame_velocity * squeeze_coefficient;	
	frame_velocity = (frame_velocity * squeeze_direction) >= 0 ? frame_velocity : 0;
}

var new_x_position = x + frame_velocity * grounded;



if keyboard_check(vk_shift) and grounded and !kneeling{
	gravity_delta = -3
	jump_arc = frame_velocity;
}

if !grounded{
	new_x_position += jump_arc;
}

if (tile_meeting_precise(ceil(new_x_position), y, "collision_layer") or tile_meeting_precise(ceil(new_x_position), y + max_walk_height, "collision_layer")){
    if grounded{
		for (var i = -max_walk_height; i < max_walk_height; i++ ){
	        if (!tile_meeting_precise(ceil(new_x_position), y - i, "collision_layer")){
	            x = new_x_position;
	            y = y - i;
	            break;
	        }
	    }
	}
} else {
		x = new_x_position;
}

determine_character_animation_state();