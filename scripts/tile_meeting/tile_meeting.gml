function tile_meeting(param_x, param_y, param_layer){

    var _layer = param_layer,
        _tm = layer_tilemap_get_id(_layer);

    var _x1 = tilemap_get_cell_x_at_pixel(_tm, bbox_left + (param_x - x), y),
        _y1 = tilemap_get_cell_y_at_pixel(_tm, x, bbox_top + (param_y - y)),
        _x2 = tilemap_get_cell_x_at_pixel(_tm, bbox_right + (param_x - x), y),
        _y2 = tilemap_get_cell_y_at_pixel(_tm, x, bbox_bottom + (param_y - y));

    for(var _x = _x1; _x <= _x2; _x++){
     for(var _y = _y1; _y <= _y2; _y++){
        if(tile_get_index(tilemap_get(_tm, _x, _y))){
        return true;
        }
     }
    }

    return false;
}