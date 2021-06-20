function experience_gravity(){

    var gravity_velocity = 5;
	
    var next_y = y + gravity_delta;
    
    if (!tile_meeting_precise(x, ceil(next_y), "collision_layer") ){
        y = next_y;
		grounded = false;
    } else {
        for (var i = ceil(next_y); i > y; i -= 1){
            if (!tile_meeting_precise(x, i, "collision_layer")){
                y = i;
				grounded = true;
				gravity_delta = .5;
                break;
            }            
        }
		if next_y > y {
			grounded = true;
			gravity_delta = .5;
		}
    }
	
	if( gravity_delta < gravity_velocity and !grounded ){
		gravity_delta += .25;
	}
    
    
    
    // COPIES
    /*
    if place_free(bottom_left_corner_x, bottom_left_corner_y) && 
    place_free(bottom_right_corner_x, bottom_right_corner_y){
        y = y + 3;
    }
    
    */
    /*
    if(!collision_point(bottom_left_corner_x, bottom_left_corner_y, sloped_floor, true, true) &&
    !collision_point(bottom_right_corner_x, bottom_right_corner_y, sloped_floor, true, true) ){
        y = y + 3;
    }
    */
}