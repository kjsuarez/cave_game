/// @description Insert description here


if(transitioning){
	viewport_width = view_get_wport(view_camera[0]);
	viewport_height = view_get_hport(view_camera[0]);
	viewport_x = view_get_xport(view_camera[0]);
	viewport_y = view_get_yport(view_camera[0]);
	
	
	top_left_x = camera_get_view_x(view_camera[0]) - (viewport_width/2);
	top_left_y = camera_get_view_y(view_camera[0]) - (viewport_height/2);
	bottom_right_x = camera_get_view_x(view_camera[0]) + (viewport_width/2);
	bottom_right_y = camera_get_view_y(view_camera[0]) + (viewport_height/2);
	/*
	top_left_x = viewport_x - (viewport_width/2);
	top_left_y = viewport_y - (viewport_height/2);
	bottom_right_x = viewport_x + (viewport_width/2);
	bottom_right_y = viewport_y + (viewport_height/2);
	
	top_left_x = player_obj.x - (viewport_width/2);
	top_left_y = player_obj.y - (viewport_height/2);
	bottom_right_x = player_obj.x + (viewport_width/2);
	bottom_right_y = player_obj.y + (viewport_height/2);
	*/
	
	/*
	draw_set_color(c_aqua)
	draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_x(view_camera[0]) + 20, camera_get_view_y(view_camera[0]) + 20, false);
	//draw_rectangle(0, 0, 400, 400, false);
	show_debug_message("drawing rectangle");
	*/
	
	/*
	var red = (25 / 100) * 255;
	var col = make_colour_rgb(red, 0, 0);
	gpu_set_blendmode(bm_subtract);
	draw_rectangle_colour(0, 0, 128, 256, col, col, col, col, false);
	gpu_set_blendmode(bm_normal);
	*/
	
	
	/*
    surf = surface_create(viewport_width, viewport_height);
    surface_set_target(surf);
    draw_set_color(c_aqua)
	draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_x(view_camera[0]) + 20, camera_get_view_y(view_camera[0]) + 20, false);
    surface_reset_target();
    draw_surface(surf, 0, 0);
   */
   
   surf = surface_create((viewport_width * camera_obj.zoom) + 2, (viewport_height * camera_obj.zoom) + 2);
    surface_set_target(surf);
    draw_set_color(c_black);
	//draw_rectangle(0,0,camera_get_view_width(view_camera[0]) * camera_obj.zoom,camera_get_view_height(view_camera[0]) * camera_obj.zoom, false);
    draw_rectangle(0,0,surface_get_width(surf), surface_get_height(surf), false);
	gpu_set_blendmode(bm_subtract);
	draw_circle_colour((viewport_width * camera_obj.zoom)/2, (viewport_height * camera_obj.zoom)/2, visible_radius, c_white, c_white, false);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	
	var _vx = camera_get_view_x(view_camera[0]);
	var _vy = camera_get_view_y(view_camera[0]);
	draw_surface(surf, _vx, _vy);
    
}