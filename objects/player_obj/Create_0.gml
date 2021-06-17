/// @description Insert description here
// You can write your code in this editor
max_walk_height = 6;
grounded = true;
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
sprite_index = real_player_sheet;
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
idle_frames = [0,0,0,0,0,0,0,0,0,1,2,3,4];
walk_frames = [8,9,10,11,12];
jump_frames = [16,17,18,18,18,18,18,18,18];
kneel_frames = [41,41,41,42];
crawl_frames = [40,41,42,43];
squeeze_frames = [44,45];
squeezed_crawling_frames = [44,45,46,47];
falling_frames = [19,20,21];

frame_index = 0;
relevant_frame_per_step = 20;
relevant_frames = idle_frames;