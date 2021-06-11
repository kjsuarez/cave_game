experience_gravity()
var frame_velocity = 2;
var new_x_position = x + frame_velocity * (keyboard_check(vk_left) * -1 + keyboard_check(vk_right) + 0);
if place_empty(new_x_position, y) && !tile_meeting(new_x_position, y, "collision_layer"){
    
    x = new_x_position;
} else {
    for (var i = 0; i < max_walk_height; i += 1){
        if (!tile_meeting_precise(new_x_position, y - i, "collision_layer")){
            x = new_x_position;
            y = y - i;
            break;
        }        
    }
}