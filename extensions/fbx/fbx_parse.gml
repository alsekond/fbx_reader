#define fbx_buffer_read_string_ubyte
/// @arg buffer
var buffer = argument0;
var size, array;
size = buffer_read(buffer,buffer_u8);
array= fbx_buffer_read_len(buffer,size);
return fbx_string_from_array( array );



#define fbx_parse_read_array
/// @arg buffer
/// @arg data_type
var buffer = argument0, data_type = argument1;
var length, encoding, comp_len, data, stride, decompressed, list, i;
length = buffer_read(buffer,buffer_u32);
encoding = buffer_read(buffer,buffer_u32);
comp_len = buffer_read(buffer,buffer_u32);
if comp_len == 0 
{
    return ds_list_create();
}
data = fbx_buffer_read_data(buffer,comp_len);
stride = buffer_sizeof(data_type);
if encoding == 1 {
    decompressed = buffer_decompress(data);
    buffer_delete(data);
    data = decompressed;}

fbx_assert(length * stride == buffer_get_size(data), "Wrong size of decompressed buffer" )

list = ds_list_create();
i = -1;
while ++i < length
    ds_list_add(list,buffer_read(data,data_type));
buffer_delete(data);
return list;

#define fbx_parse_read_type
/// @arg buffer
/// @arg type
var buffer = argument0, type = argument1;
var size, array, data;
switch type 
{
    case "Y": return buffer_read(buffer,buffer_s16);break;
    case "C": return buffer_read(buffer,buffer_u8);break;
    case "I": return buffer_read(buffer,buffer_s32);break;
    case "F": return buffer_read(buffer,buffer_f32);break;
    case "D": return buffer_read(buffer,buffer_f64);break;
    case "L": return buffer_read(buffer,buffer_u64);break; /// here should be s64, but it seems u64 actually s64
    case "R": 
        size = buffer_read(buffer,buffer_u32);
        array = fbx_buffer_read_len(buffer,size);
        return fbx_ds_list_from_array( array );
    break;
    case "S":
        size = buffer_read(buffer,buffer_u32);
        data = fbx_buffer_read_len(buffer,size);
        return fbx_string_from_array(data);
    break;
    case "f": return fbx_parse_read_array( buffer, buffer_f32);break;
    case "i": return fbx_parse_read_array( buffer, buffer_s32);break;
    case "d": return fbx_parse_read_array( buffer, buffer_f64);break;
    case "l": return fbx_parse_read_array( buffer, buffer_u64);break; /// here should be s64, but it seems u64 actually s64
    case "buffer": return fbx_parse_read_array( buffer, buffer_u8);break;
    case "c": return fbx_parse_read_array( buffer, buffer_u8);break;
}

#define fbx_parse_read_elem
/// @arg b
/// @arg element_type
/// @arg block_len
var b = argument0, element_type = argument1, block_len = argument2;
var end_offset      = buffer_read(b,element_type);
if end_offset  == 0 return noone;

var prop_count  = buffer_read(b,element_type);
var prop_length = buffer_read(b,element_type);
var prop_name   = fbx_buffer_read_string_ubyte(b);
var props_type  = "";
var props_data  = ds_list_create();
var elem_tree   = ds_list_create();

var i = -1;

while ++i < prop_count
{
    var data_type = chr(buffer_read(b,buffer_u8));
    var data = fbx_parse_read_type(b,data_type);
    props_data[| i] = data;
    var list_types = "Rfidlbc";
    var is_list = string_pos(data_type,list_types) > 0;
    if is_list then ds_list_mark_as_list(props_data,i);
    props_type += data_type;
}

var tell = buffer_tell(b);
if buffer_tell(b) < end_offset 
{
    while buffer_tell(b) < (end_offset - block_len )
    {
        var elem = fbx_parse_read_elem(b,element_type,block_len);
        fbx_ds_list_add_list(elem_tree, elem);
    }
    
    var block_sentinel = fbx_buffer_read_len( b, block_len );
    if not array_equals(block_sentinel,array_create(block_len,0) )
    {
        show_error( "IOError " + string( buffer_tell(b) ) + 
            " failed to read nested block sentinel, expected all bytes to be 0", 
            false);
    }
}

if buffer_tell(b) != end_offset
{
    show_error( "FBX Scope length not reached, something is wrong. ", false );
}

var args = ds_list_create();
ds_list_add(args,prop_name);
ds_list_add(args,props_type);
fbx_ds_list_add_list(args,props_data);
fbx_ds_list_add_list(args,elem_tree);

return args;

#define fbx_parse
/// @arg filename
var filename = argument0;
var b = buffer_load(filename);
var head_magic = fbx_array_from_string("Kaydara FBX Binary");
fbx_array_concat(head_magic,[$20,$20,$00,$1A,$00]);

var magic = fbx_buffer_read_len(b,array_length_1d(head_magic));
if not array_equals(head_magic,magic) 
{
    show_error( "FBX Invalid Header", true );
    return noone;
}

var version             = buffer_read(b,buffer_u32);
show_debug_message( "fbx_version_is " + string(version) );
if version < 7100
{
    show_error( "FBX version older then 7100 is not supported", true );
    return noone;
}

var block_len   = 25;
var elem_type   = buffer_u64;
if version < 7500 
{
    block_len   = 13;
    elem_type   = buffer_u32;
}

var elements = ds_list_create();
while true 
{
    var elem = fbx_parse_read_elem( b, elem_type, block_len );
    if elem == noone then break;
    fbx_ds_list_add_list(elements,elem);
}

var root = ds_list_create();
ds_list_add(root,"root");
ds_list_add(root,"");
fbx_ds_list_add_list(root,ds_list_create());
fbx_ds_list_add_list(root,elements);

buffer_delete(b);
return root;