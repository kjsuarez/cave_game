/// @description Insert description here
transitioning = false;
transition_state = "ready";

viewport_width = view_get_wport(view_camera[0]);
viewport_height = view_get_hport(view_camera[0]);

max_radius = viewport_width * 1.2;
original_visible_radius = 0; //max zoom
visible_radius = original_visible_radius;
target_visible_radius = max_radius;
transition_spd = 0.05;

//surf = surface_create((viewport_width * camera_obj.zoom) + 2, (viewport_height * camera_obj.zoom) + 2);