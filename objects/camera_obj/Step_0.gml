/// @description Insert description here
zoom += (target_zoom - zoom) * zoom_spd;
camera_set_view_size(view_camera[0], initial_camera_width * zoom, initial_camera_height * zoom)

var vw = camera_get_view_width(view_camera[0]) / 2;
var vh = camera_get_view_height(view_camera[0]) / 2;

// set camera position to follow player
camera_set_view_pos(view_camera[0], target.x - vw, target.y - vh);