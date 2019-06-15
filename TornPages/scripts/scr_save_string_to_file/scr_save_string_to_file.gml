/// @desc saves a string out to a file
/// @arg filename
/// @arg string

var filename = argument0
var data_string = argument1

var buffer = buffer_create(string_byte_length(data_string)+1,buffer_fixed,1)
buffer_write(buffer,buffer_string,data_string)
buffer_save(buffer,filename)
buffer_delete(buffer)