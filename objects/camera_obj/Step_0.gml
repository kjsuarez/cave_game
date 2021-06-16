/// @description Insert description here
zoom += (target_zoom - zoom) * zoom_spd;
camera_set_view_size(view_camera[0], initial_camera_width * zoom, initial_camera_height * zoom)

var vw = camera_get_view_width(view_camera[0]) / 2;
var vh = camera_get_view_height(view_camera[0]) / 2;

current_x_position = target.x + x_offset;
x_offset = ((x_offset * -1) + (0.25 * x_offset));
current_y_position = target.y

// set camera position to follow player
camera_set_view_pos(view_camera[0], clamp(current_x_position - vw, 0, room_width - (vw * 2)), clamp(current_y_position - vh, 0, room_height - (vh * 2)));