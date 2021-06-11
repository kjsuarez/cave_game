function tile_meeting_precise(param_x, param_y, param_layer){

///@description tile_meeting_precise(x,y,layer)
///@param x
///@param y
///@param layer
var _layer = param_layer,
    _tm = layer_tilemap_get_id(_layer),
    _checker = precise_tile_checker_obj
if(!instance_exists(_checker)) instance_create_depth(0,0,0,_checker); 


var _x1 = tilemap_get_cell_x_at_pixel(_tm, bbox_left + (param_x - x), y),
    _y1 = tilemap_get_cell_y_at_pixel(_tm, x, bbox_top + (param_y - y)),
    _x2 = tilemap_get_cell_x_at_pixel(_tm, bbox_right + (param_x - x), y),
    _y2 = tilemap_get_cell_y_at_pixel(_tm, x, bbox_bottom + (param_y - y));

for(var _x = _x1; _x <= _x2; _x++){
 for(var _y = _y1; _y <= _y2; _y++){
    var _tile = tile_get_index(tilemap_get(_tm, _x, _y));
    if(_tile){
     if(_tile == 1) return true;

     _checker.x = _x * tilemap_get_tile_width(_tm);
     _checker.y = _y * tilemap_get_tile_height(_tm);
     _checker.image_index = _tile;

     if(place_meeting(param_x,param_y,_checker)) return true;
    }
 }
}

return false;

}