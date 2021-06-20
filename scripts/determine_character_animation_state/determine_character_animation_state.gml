// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function determine_character_animation_state(){
	last_step_animation_state = animation_state;
	if(!grounded && gravity_delta == 5) {
		animation_state = "falling";
	} else if(!grounded){
		animation_state = "jumping";
	} else if(grounded && !kneeling && frame_velocity == 0) {
		animation_state = "idle";
	} else if(grounded && !kneeling && frame_velocity > 0) {
		animation_state = "walking";
		animation_direction = "right";
	} else if(grounded && !kneeling && frame_velocity < 0) {
		animation_state = "walking";
		animation_direction = "left";
	} else if(grounded && kneeling && !squeezed && frame_velocity > 0) {
		animation_state = "crawling";
		animation_direction = "right";
	} else if(grounded && kneeling && !squeezed && frame_velocity < 0) {
		animation_state = "crawling";
		animation_direction = "left";
	} else if(grounded && kneeling && !squeezed && frame_velocity == 0) {
		animation_state = "kneeling";
	} else if(squeezed && frame_velocity == 0) {
		animation_state = "squeezed";
	} else if(squeezed && frame_velocity < 0) {
		animation_state = "squeezed_crawling";
		animation_direction = "left";
	} else if(squeezed && frame_velocity > 0) {
		animation_state = "squeezed_crawling";
		animation_direction = "right";
	}
	
	if(last_step_animation_state != animation_state){
		frame_index = 0;
		animation_step_counter = 0;
	}
	
}