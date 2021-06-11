function experience_gravity(){

    var gravity_velocity = 5;

    var next_y = y + gravity_velocity;
    
    if (!tile_meeting_precise(x, next_y, "collision_layer") ){
        y = next_y;
    } else {
        
        if(tile_meeting_precise(x, next_y, "collision_layer")){
            for (var i = next_y; i > 0; i -= 1){
                if (!tile_meeting_precise(x, i, "collision_layer")){
                
                    y = i;
                    break;
                }            
            }
        }
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