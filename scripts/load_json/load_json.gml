function load_json(file_name){
	var buffer = buffer_load(file_name);
	var str = buffer_read(buffer, buffer_string);
	buffer_delete(buffer);

	//show_debug_message("json returned from file: ")
	//show_debug_message(str);
	var hash = json_decode(str);

	return hash;
}