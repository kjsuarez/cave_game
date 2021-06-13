/// @description determine where exits go

possible_destinations = load_json("room_manifest.json")[?"rooms"]
randomise();
ds_list_shuffle(possible_destinations);
var room_str = possible_destinations[|0];

destination = asset_get_index(room_str);