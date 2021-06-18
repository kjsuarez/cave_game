/// @description Insert description here
// You can write your code in this editor
max_walk_height = 6;
grounded = true;
jumping = false;
gravity_delta = 0;
jump_arc = 0;
kneeling = false;
squeezed = false;
frame_velocity = 0;
;
struggle_max = 4;
struggle_counter = 0;
struggle_view_radius_percentages = [0.85, 0.90, 0.95, 1]
squeeze_coefficient = 1;
squeeze_direction = 0;


//animation
sprite_index = player_idle;
animation_state = "idle";
animation_direction = "right";
animation_step_counter = 0;
idle_steps_per_frame = 20;
walk_steps_per_frame = 5;
jump_steps_per_frame = 8;
fall_steps_per_frame = 20;
kneel_steps_per_frame = 20;
crawl_steps_per_frame = 10
squeeze_steps_per_frame = 100;
squeezed_crawling_steps_per_frame = 10;
last_step_animation_state = animation_state;
idle_frames = [0,0,0,0,0,0,0,0,0,1,2,3,4,3];
walk_frames = [0,1,2,3,4];
jump_frames = [0,1,2,2,2,2,2,2,2];
kneel_frames = [1,1,1,2];
crawl_frames = [0,1,2,2];
squeeze_frames = [0,1];
squeezed_crawling_frames = [0,1,2,3];
falling_frames = [0,1,2];

frame_index = 0;
relevant_frame_per_step = 20;
relevant_frames = idle_frames;