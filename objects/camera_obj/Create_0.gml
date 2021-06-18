/// @description Insert description here

if(global.in_start_room){
	fixed_angle = true;
	original_zoom = 1
	target = fixed_angle_target_obj;
} else {
	target = player_obj;
}
initial_viewport_width = view_get_wport(view_camera[0]);
initial_viewport_height = view_get_hport(view_camera[0]);

initial_camera_width = camera_get_view_width(view_camera[0]);
//current_camer_width = initial_camera_width;
//desired_camer_width = current_camer_width;

initial_camera_height = camera_get_view_height(view_camera[0]);
//current_camer_height = initial_camera_height;
//desired_camer_height = current_camer_height;

show_debug_message("In start room? " + string(global.in_start_room) )
if(global.in_start_room){
	fixed_angle = true;
	original_zoom = 1
} else {
	original_zoom = .6
}

zoom = original_zoom;
target_zoom = zoom;
zoom_spd = 0.2;

current_x_position = 0;
x_offset = 0;

instance_create_layer(0,0,"visul_effects_layer",transition_handler_obj);
instance_create_layer(0,0,"Instances",sound_handler_obj);
instance_create_layer(0,0,"Instances",room_manager_obj);