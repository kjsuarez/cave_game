/// @description Insert description here
if(grounded and !kneeling){
	kneeling = true;
	sprite_index = player_kneeling_spr;
	x += 8;
	y += 8;
}
