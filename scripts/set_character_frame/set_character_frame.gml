// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_character_frame(){

	
		
	show_debug_message("animation status is: " + animation_state)
	show_debug_message("current frame: " + string(image_index))
	
	switch (animation_state)
    {
    case "idle":
		sprite_index = player_idle
        relevant_frames_per_step = idle_steps_per_frame;
		relevant_frames = idle_frames;
        break;
    case "walking":
		sprite_index = player_walking
        relevant_frames_per_step = walk_steps_per_frame;
		relevant_frames = walk_frames;
		image_xscale = (animation_direction == "right") ? 1 : -1;
        break;
    case "jumping":
		sprite_index = player_jumping
        relevant_frames_per_step = jump_steps_per_frame;
		relevant_frames = jump_frames;
        break;
    case "falling":
		sprite_index = player_falling
        relevant_frames_per_step = fall_steps_per_frame;
		relevant_frames = falling_frames;
        break;
	case "kneeling":
		sprite_index = player_crawling
		relevant_frames_per_step = kneel_steps_per_frame;
		relevant_frames = kneel_frames;
		break;
	case "crawling":
		sprite_index = player_crawling
		relevant_frames_per_step = crawl_steps_per_frame;
		relevant_frames = crawl_frames;
		image_xscale = (animation_direction == "right") ? 1 : -1;
		break;
	case "squeezed":
		sprite_index = player_squeezed
		relevant_frames_per_step = squeeze_steps_per_frame;
		relevant_frames = squeeze_frames;
		image_xscale = (animation_direction == "right") ? 1 : -1;
		break;
	case "squeezed_crawling":
		sprite_index = player_squeezed
		relevant_frames_per_step = squeezed_crawling_steps_per_frame;
		relevant_frames = squeezed_crawling_frames;
		image_xscale = (animation_direction == "right") ? 1 : -1;
		break;
    }
	
	image_index = relevant_frames[frame_index];
	
	if(animation_step_counter < relevant_frames_per_step){
		animation_step_counter += 1;
	} else {
		animation_step_counter = 0;
		if(frame_index < array_length(relevant_frames) -1){
			frame_index += 1;
		} else {
			frame_index = 0;
		}
	}
}