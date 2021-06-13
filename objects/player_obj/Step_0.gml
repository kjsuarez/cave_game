experience_gravity()
var frame_velocity = (1 + keyboard_check(ord("Z"))) * ( 0 + keyboard_check(vk_right) - keyboard_check(vk_left)) ;
var new_x_position = x + frame_velocity * grounded;

if keyboard_check(vk_shift) and grounded{
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

show_debug_message(tilemap_get_at_pixel(layer_tilemap_get_id("collision_layer"), x - 8, y + 16))
show_debug_message(tilemap_get_at_pixel(layer_tilemap_get_id("collision_layer"), x + 8, y + 16))
