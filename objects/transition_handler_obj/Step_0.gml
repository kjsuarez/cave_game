/// @description Insert description here
show_debug_message("transition_state: " + transition_state)

visible_radius += (target_visible_radius - visible_radius) * transition_spd;

var close_enough = 1;

if((visible_radius - target_visible_radius) < close_enough && (visible_radius - target_visible_radius) > (close_enough * -1) && transition_state == "transitioning"){
	transition_state = "finished";
}