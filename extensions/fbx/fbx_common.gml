#define fbx_array_push
/// @arg array
/// @arg value
var array = argument0, value = argument1;
var len = array_length_1d( array );
array[@len] = value;

#define fbx_array_from_string
/// @arg str
var str = argument0;
var i, array;
array = [];
i = -1;
while ++i < string_length(str)
    fbx_array_push(array,string_byte_at(str,i+1));
return array;

#define fbx_array_concat
/// @arg a1
/// @arg a2
var a1 = argument0, a2 = argument1;
var i = -1;
var len = array_length_1d(a2);
while ++i < len
{
    fbx_array_push(a1,a2[i]);
}

#define fbx_array_from_list
/// @arg list
var list = argument0;
var a, size, i;
a = [];
size = ds_list_size(list);
i = -1;
while ++i < size
{
    fbx_array_push(a,list[| i]);
}
return a;

#define fbx_buffer_read_len
/// @arg buff
/// @arg len
var buff = argument0, len = argument1;
var array, byte;
array   = [];
repeat len
{
    var byte = buffer_read(buff, buffer_u8);
    fbx_array_push(array,byte);
}
return array;

#define fbx_buffer_read_data
/// @arg buffer
/// @arg size
var buffer = argument0, size = argument1;
var out, offset;
out = buffer_create(size,buffer_fixed,1);
offset = buffer_tell(buffer);
buffer_copy(buffer,offset,size,out,0);
buffer_seek(buffer,buffer_seek_start,offset + size);
return out;

#define fbx_ds_list_add_list
/// @arg list
/// @arg value
var list = argument0, value = argument1;
ds_list_add(list,value);
ds_list_mark_as_list(list,ds_list_size(list)-1);

#define fbx_ds_list_add_map
/// @arg list
/// @arg map
var list = argument0, map = argument1;
ds_list_add(list,map);
ds_list_mark_as_map(list,ds_list_size(list)-1);


#define fbx_ds_list_from_array
/// @arg array
var array = argument0;
var len, list, i;
len = array_length_1d(array);
list = ds_list_create();
i = -1;
while ++i < len
    list[|i] = array[i];
return list;

#define fbx_string_from_array
/// @arg array
var array = argument0;
var i, str, len;
i   = -1;
str = "";
len = array_length_1d( array );
while ++i < len
{
    str += chr(array[i]);
}
return str;

#define fbx_string_to_array
/// @arg str
/// @arg delim
var str = argument0, delim = argument1;
var delim, str, pos, ind, a, len;
pos = string_pos(delim,str);
ind = 0;
a = [];
while(pos > 0) {
    var s = string_copy(str,1,pos - 1);
    a[ind] = s;
    ind++;
    len = string_length(str) - pos;
    str = string_copy(str,pos + 1,len);
    pos = string_pos(delim,str);
}
a[ind] = string_copy(str,1,string_length(str));
return a;


#define fbx_assert
if argument0 then exit;
show_error("FALSE_ASSERT " + string( argument1 ), true );

#define fbx_trace
var str = string(get_timer()) + " ";
var i = -1;
while(++i < argument_count) str += string(argument[i]) + " ";
show_debug_message(str);

#define fbx_convert_vector_to_rgb
/// @arg v
var v = argument0;
var vx,vy,vz;
vx = fbx_convert_value_to_rgb( v[0] );
vy = fbx_convert_value_to_rgb( v[1] );
vz = fbx_convert_value_to_rgb( v[2] );
return fbx_color_array_to_rgb( [vx,vy,vz] );

#define fbx_convert_value_to_rgb
/// @arg value
var value = argument0;
return round( (value + 1) * 127.5 );

#define fbx_color_array_to_rgb
/// @arg clr
var clr = argument0;
var rgb;
rgb = clr[0]<<16;
rgb += clr[1]<<8;
rgb += clr[2];
return rgb;

#define fbx_build_tangent
/// @arg p1
/// @arg p2
/// @arg p3
/// @arg t1
/// @arg t2
/// @arg t3
var p1 = argument0, p2 = argument1, p3 = argument2, t1 = argument3, t2 = argument4, t3 = argument5;
var dpx, dpy, du, dv, duv, tng;
dpx = fbx_v3_sub( p2, p1 );
dpy = fbx_v3_sub( p3, p1 );
du = fbx_v2_sub( t2, t1 );
dv = fbx_v2_sub( t3, t1 );
duv = du[0] * dv[1] - dv[0] * du[1];
duv = duv == 0?0:1 / duv;
dpx = fbx_v3_mul( dpx, dv[1] );
dpy = fbx_v3_mul( dpy, du[1] );
tng = fbx_v3_sub( dpx, dpy );
return fbx_v3_mul( tng, duv );

#define fbx_tangent_nrm
/// @arg tng
/// @arg nrm
var tng = argument0, nrm = argument1;
var dp;
nrm = fbx_v3_nrm( nrm );
dp = fbx_v3_dot( nrm, tng );
nrm = fbx_v3_mul( nrm, dp );
tng = fbx_v3_sub( tng, nrm );
tng = fbx_v3_nrm( tng );
return tng;

#define fbx_v2_sub
///fbx_v2_add(a:v2,b:v2)->v2 :subtract vector b from vector a
return [argument0[0] - argument1[0], argument0[1] - argument1[1]];

#define fbx_v3_mul
///fbx_v3_mul(a:v3,m:real)->v3 :multiply vector by number
return [argument0[0] * argument1, argument0[1] * argument1, argument0[2] * argument1];

#define fbx_v3_nrm
///fbx_v3_nrm(a:v3)->v3 :normalize vector
var l = point_distance_3d(0,0,0,argument0[0],argument0[1],argument0[2]);
l = l==0?0:1/l;
return [argument0[0] * l, argument0[1] * l, argument0[2] * l];

#define fbx_v3_dot
///fbx_v3_dot(a:v3,b:v3)->real :return dot product
return dot_product_3d(argument0[0],argument0[1],argument0[2],argument1[0],argument1[1],argument1[2]);

#define fbx_v3_sub
///fbx_v3_sub(a:v3,b:v3)->v3 :subtract vector b from vector a
return [argument0[0] - argument1[0], argument0[1] - argument1[1], argument0[2] - argument1[2]];

#define fbx_build_matrix
/// @arg px
/// @arg py
/// @arg pz
/// @arg rx
/// @arg ry
/// @arg rz
/// @arg sx
/// @arg sy
/// @arg sz
var px = argument0, py = argument1, pz = argument2, rx = argument3, ry = argument4, rz = argument5, sx = argument6, sy = argument7, sz = argument8;
var mrx = matrix_build(0,0,0,rx,0,0,1,1,1);
var mry = matrix_build(0,0,0,0,ry,0,1,1,1);
var mrz = matrix_build(0,0,0,0,0,rz,1,1,1);
var mtr = matrix_build(px,py,pz,0,0,0,sx,sy,sz);
var amt = matrix_multiply( matrix_multiply(mrx,mry),mrz );
amt = matrix_multiply(amt,mtr);
return amt;

#define fbx_matrix_inverse
/// @arg m
var m = argument0;
var a1 = m[0], a2 = m[1], a3 = m[2], a4 = m[3],
    b1 = m[4], b2 = m[5], b3 = m[6], b4 = m[7],
    c1 = m[8], c2 = m[9], c3 = m[10], c4 = m[11],
    d1 = m[12], d2 = m[13], d3 = m[14], d4 = m[15],
    i = -1, det, inv,
    cd34=c3*d4-c4*d3, bd34=b3*d4-b4*d3, bc34=b3*c4-b4*c3,
    ad34=a3*d4-a4*d3, ab34=a3*b4-a4*b3, ac34=a3*c4-a4*c3,
    cd24=c2*d4-c4*d2, ad24=a2*d4-a4*d2, bc24=b2*c4-b4*c2,
    bd24=b2*d4-b4*d2, ab24=a2*b4-a4*b2, ac24=a2*c4-a4*c2,
    cd23=c2*d3-c3*d2, bd23=b2*d3-b3*d2, ad23=a2*d3-a3*d2,
    ac23=a2*c3-a3*c2, bc23=b2*c3-b3*c2, ab23=a2*b3-a3*b2;
inv = [
     b2*cd34 - c2*bd34 + d2*bc34,
    -a2*cd34 + c2*ad34 - d2*ac34,
     a2*bd34 - b2*ad34 + d2*ab34,
    -a2*bc34 + b2*ac34 - c2*ab34,
    
    -b1*cd34 + c1*bd34 - d1*bc34,
     a1*cd34 - c1*ad34 + d1*ac34,
    -a1*bd34 + b1*ad34 - d1*ab34,
     a1*bc34 - b1*ac34 + c1*ab34,
    
     b1*cd24 - c1*bd24 + d1*bc24,
    -a1*cd24 + c1*ad24 - d1*ac24,
     a1*bd24 - b1*ad24 + d1*ab24,
    -a1*bc24 + b1*ac24 - c1*ab24,
    
    -b1*cd23 + c1*bd23 - d1*bc23,
     a1*cd23 - c1*ad23 + d1*ac23,
    -a1*bd23 + b1*ad23 - d1*ab23,
     a1*bc23 - b1*ac23 + c1*ab23
];

det = a1*inv[0] + a2*inv[4] + a3*inv[8] + a4*inv[12];
if det == 0 return m;
det = 1 / det;
while ++i < 16
{
    inv[i] *= det;
}
return inv;

#define fbx_sprite_load
/// @arg name
var name = argument0;
if ds_map_exists(FBX_SPRITE_POOL,name)
{
    return FBX_SPRITE_POOL[? name];
}
else
{
    var spr = sprite_add(name,0,false,true,0,0);
    FBX_SPRITE_POOL[? name] = spr;
    return spr;
}

#define fbx_material_set
//!#import Blank
var mat/*:FBX_PBR_Mat*/ = argument0;
;
fbx_shader_set_sampler( "u_normal", mat[FBX_PBR_Mat.normal] );
fbx_shader_set_sampler( "u_emission", mat[FBX_PBR_Mat.emissive] );
fbx_shader_set_sampler( "u_MetalicRoughnessSampler", mat[FBX_PBR_Mat.arm] );
return mat[FBX_PBR_Mat.albedo];

#define fbx_shader_set_sampler
/// @arg tex
/// @arg name
var name = argument0, tex = argument1;
var sampler = shader_get_sampler_index( shader_current(), name );
texture_set_stage( sampler, tex );

#define fbx_material_assign

//! #import Blank
var fbx/*:FBX_Pool*/ = argument0, name = argument1;
;
var geoms, mat, i, len, geom/*:FBX_Model*/;
mat     = fbx_load_pbr_mat(name);
geoms   = fbx[FBX_Pool.geom];
len     = array_length_1d(geoms);
i = -1;
while ++i < len
{
    geom = geoms[i];
    geom[@FBX_Model.material] = mat;
}

#define fbx_material_assign_by_index

//! #import Blank
var fbx/*:FBX_Pool*/ = argument0, index = argument1, name = argument2;
;
var geoms, mat, i, len, geom/*:FBX_Model*/;
mat     = fbx_load_pbr_mat(name);
geoms   = fbx[FBX_Pool.geom];
len     = array_length_1d(geoms);
i = -1;
while ++i < len
{
    if i == index
    {
        geom = geoms[i];
        geom[@FBX_Model.material] = mat;
        break;
    }
}

#define fbx_load_pbr_mat
/// @arg name
//!#import Blank
var name = argument0;
var spr_alb, spr_arm, spr_nrm, spr_emv, mat/*:FBX_PBR_Mat*/;
var prefix = "assets/";
spr_alb     = fbx_sprite_load( prefix + name + "_alb.jpg" );
spr_arm     = fbx_sprite_load( prefix + name + "_arm.jpg" );
spr_nrm     = fbx_sprite_load( prefix + name + "_nrm.jpg" );
spr_emv     = fbx_sprite_load( prefix + name + "_emv.jpg" );
mat = array_create(FBX_PBR_Mat.sizeof);
mat[@FBX_PBR_Mat.albedo]      = sprite_get_texture( spr_alb, 0 );
mat[@FBX_PBR_Mat.normal]      = sprite_get_texture( spr_nrm, 0 );
mat[@FBX_PBR_Mat.emissive]    = sprite_get_texture( spr_emv, 0 );
mat[@FBX_PBR_Mat.arm]         = sprite_get_texture( spr_arm, 0 );
return mat;
