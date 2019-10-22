/// @param filename
var filename = argument0;

if (file_exists(filename)) {
	var buffer = buffer_load(filename);
	var str    = buffer_read(buffer, buffer_string);
	buffer_delete(buffer);
	var map = json_decode(str);
	return map;
}
else {
	show_message("File " + filename + " not found.");
	game_end();
}
