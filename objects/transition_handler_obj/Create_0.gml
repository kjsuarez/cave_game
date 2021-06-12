/// @description Insert description here
transitioning = false;

viewport_width = view_get_wport(view_camera[0]);
viewport_height = view_get_hport(view_camera[0]);


original_visible_radius = viewport_width * camera_obj.zoom;
visible_radius = original_visible_radius;
target_visible_radius = visible_radius;
transition_spd = 0.05;