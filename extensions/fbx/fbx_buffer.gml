#define fbx_build_anim_buffer
var fbx/*:FBX_Pool*/ = argument0;
if fbx[FBX_Pool.anim_count] == 0 return false;
var layers, lay/*:FBX_ALayer_Data*/, anim, len, size, time, 
    i, nodes, mtx, tick, buffer;
layers = fbx[FBX_Pool.alayer];
lay = layers[0];
nodes = lay[FBX_ALayer_Data.nodes];
size = array_length_1d(nodes);
len = lay[FBX_ALayer_Data.length];
tick = .015;
buffer = buffer_create( 1, buffer_grow, 1 );
buffer_write( buffer, buffer_u32, size );
buffer_write( buffer, buffer_u32, floor( len / tick ) );
i = -1;
while ++i < size
{
    time = 0;
    anim = nodes[i];
    while time + tick < len
    {
        if not is_array(anim) then mtx = matrix_build_identity();
        else mtx = fbx_frame_matrix( anim, time );
        fbx_buffer_write_array( buffer, buffer_f32, mtx );
        time += tick;
    }
}

size = buffer_tell( buffer );
return [buffer, size];


#define fbx_vbuff_save
var fbx/*:FBX_Pool*/ = argument0;
var name = argument1;
var geoms = fbx[FBX_Pool.geom];

var len = array_length_1d( geoms );
var header_size = ( len * 2  + 1 ) * 4;
var total_size = header_size;
var geom/*:FBX_Model*/;
var offsets, gbuff, size, offset, offset_pair;
offsets = [];
var i = -1;
while ++i < len
{
    geom = geoms[i];
    gbuff = geom[FBX_Model.buffer];
    buffer_seek( gbuff, buffer_seek_end, 0 );
    size = buffer_tell( gbuff );
    fbx_array_push( offsets, [total_size, size] );
    total_size += size;
}

var buffer = buffer_create( 1, buffer_grow, 1 );
var buff_pair;
buff_pair = fbx_build_bind_buffer(fbx);
fbx_buffer_insert( buffer, FBX_BuffTypes.bind, buff_pair[1], buff_pair[0] );

buff_pair = fbx_build_skin_buffer(fbx);
fbx_buffer_insert( buffer, FBX_BuffTypes.skin, buff_pair[1], buff_pair[0] );

buff_pair = fbx_build_anim_buffer(fbx);
if buff_pair != false 
{
    fbx_buffer_insert( buffer, FBX_BuffTypes.anim, buff_pair[1], buff_pair[0] );
}

var i = -1;
while ++i < len
{
    geom = geoms[i];
    gbuff = geom[FBX_Model.buffer];
    buffer_seek( gbuff, buffer_seek_end, 0 );
    size = buffer_tell( gbuff );
    fbx_buffer_insert( buffer, FBX_BuffTypes.geom, size, gbuff );
}

size = buffer_tell( buffer );
var save_buff = buffer_create( size, buffer_fixed, 1 );
buffer_copy( buffer, 0, size, save_buff, 0 );

buffer_save( save_buff, name);
buffer_delete(save_buff);
buffer_delete(buffer);

// var buff = buffer_create( total_size, buffer_fixed, 1);
// buffer_write( buff, buffer_u32, len );
// var i = -1;
// while ++i < len
// {
//     geom = geoms[i];
//     gbuff = geom.buffer;
//     offset_pair = offsets[i];
//     offset = offset_pair[0];
//     size    = offset_pair[1];
//     buffer_write( buff, buffer_u32, offset );
//     buffer_write( buff, buffer_u32, size );
//     buffer_copy( gbuff, 0, size, buff, offset );
// }

// buffer_save( buff, "testmeshes.msh");
// buffer_delete(buff);

#define fbx_buffer_write_array
/// @arg buffer
/// @arg type
/// @arg array
var buffer = argument0, type = argument1, array = argument2;
var len, i;
len = array_length_1d( array );
i = -1;
while ++i < len
{
    buffer_write( buffer, type, array[ i ] );
}
return true;

#define fbx_buffer_insert
/// @arg buffer
/// @arg type
/// @arg size
/// @arg source
var buffer = argument0, type = argument1, size = argument2, source = argument3;
var offset;
buffer_write( buffer, buffer_u32, size );
buffer_write( buffer, buffer_u32, type );
offset = buffer_tell( buffer );
buffer_copy( source,0,size,buffer,offset);
offset += size;
buffer_seek( buffer, buffer_seek_start, offset );
buffer_delete( source );

#define fbx_build_skin_buffer
//!#import Blank
var fbx/*:FBX_Pool*/ = argument0;
var geoms, skin/*:FBX_Skin_Data*/, geom/*:FBX_Model*/, len, i, buffer, type,
    deformers, deformer/*:FBX_Deformer_Data*/, j, size, index, bsize;
geoms = fbx[FBX_Pool.geom];
type = buffer_u8;
buffer = buffer_create( 1, buffer_grow, 1 );
len = array_length_1d( geoms );
buffer_write( buffer, type, len );
i = -1;
while ++i < len
{
    geom = geoms[ i ];
    skin = geom[FBX_Model.skin];
    if skin == noone
    {
        buffer_write( buffer, type, 0 );
        continue;
    }
    deformers = skin[FBX_Skin_Data.deformers];
    size = array_length_1d( deformers );
    buffer_write( buffer, type, size );
    j = -1;
    while ++j < size
    {
        deformer = deformers[ j ];
        index = deformer[FBX_Deformer_Data.bone_index];
        buffer_write( buffer, type, index );
    }
}
bsize = buffer_tell( buffer );
return [buffer, bsize];

#define fbx_build_bind_buffer
//!#import Blank
var fbx/*:FBX_Pool*/ = argument0;
var limbs, limb/*:FBX_Model_Data*/, len, i, name, 
    bind, parent, lbuff, lsize;
lbuff = buffer_create( 1, buffer_grow, 1 );
limbs = fbx[FBX_Pool.limbs];
len = array_length_1d( limbs );
buffer_write( lbuff, buffer_f32, len );
i = -1;
while ++i < len
{
    limb = limbs[i];
    name = limb[FBX_Model_Data.name];
    name = name[0];
    bind = limb[FBX_Model_Data.bind_imt];
    parent = limb[FBX_Model_Data.parent];
    buffer_write( lbuff, buffer_f32, parent );
    fbx_buffer_write_array( lbuff, buffer_f32, bind );
}
lsize = buffer_tell( lbuff );

return [lbuff, lsize];

#define fbx_object_anim_save
var fbx/*:FBX_Pool*/ = argument0, filename = argument1, obj_id = argument2;
var limb/*:FBX_Model_Data*/;
var limbs = fbx[FBX_Pool.limbs];
var len = array_length_1d(limbs);

var mtx = fbx[FBX_Pool.bone_mtx];
var len = fbx[FBX_Pool.anim_length];
var time = fbx[FBX_Pool.anim_time];
var obj_mtx = [];
var tick = 1/60;
var frames = floor( len / tick );
var framesize = 16 * 4;
var bsize = framesize * frames + 4;
var buff = buffer_create( bsize, buffer_fixed, 4 );
buffer_write( buff, buffer_f32, frames );
var px, py, pz, vx, vy, vz;
var mat_rot = matrix_build(0,0,0,90,0,0,1,1,1);
var pos, view;
var i = -1;
trace( "FRAMES", frames)
while ++i < frames
{
    trace( i );
    fbx_animate(fbx, tick);
    obj_mtx = mtx[obj_id];
    //obj_mtx = matrix_multiply( obj_mtx, mat_rot );
    fbx_buffer_write_array( buff, buffer_f32, obj_mtx );
    time = fbx[FBX_Pool.anim_time];
}
buffer_save( buff, filename );
buffer_delete( buff );
return true;
