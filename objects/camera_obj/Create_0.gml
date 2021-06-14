/// @description Insert description here
target = player_obj;
initial_viewport_width = view_get_wport(view_camera[0]);
initial_viewport_height = view_get_hport(view_camera[0]);

initial_camera_width = camera_get_view_width(view_camera[0]);
//current_camer_width = initial_camera_width;
//desired_camer_width = current_camer_width;

initial_camera_height = camera_get_view_height(view_camera[0]);
//current_camer_height = initial_camera_height;
//desired_camer_height = current_camer_height;

original_zoom = .5
zoom = original_zoom;
target_zoom = zoom;
zoom_spd = 0.2;

current_x_position = 0;
x_offset = 0;
