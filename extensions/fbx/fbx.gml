/// number of ktimes in second
//#macro FBX_KTIME global.fbx_ktime

/// FBX element macros
//#macro FBX_NAME 0
//#macro FBX_TYPE 1
//#macro FBX_DATA 2
//#macro FBX_TREE 3

//#macro FBX_TEMP_LISTS global.fbx_temp_lists
//#macro FBX_SPRITE_POOL global.fbx_sprite_pool
//#macro FBX_VERTEX_FORMAT global.fbx_vertex_format

#define fbx_init
FBX_TEMP_LISTS  = ds_list_create();
FBX_SPRITE_POOL = ds_map_create();
FBX_KTIME       = 1/46186158000;

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();          // tangent
vertex_format_add_color();          // blend bones
vertex_format_add_color();          // blend weights
FBX_VERTEX_FORMAT = vertex_format_end();
// 4 * 3 + 4 * 3 + 4 * 2 + 4 + 4 + 4 = 44

enum FBX_Model {uuid,name,type,skin,morphers,vertices,normals,uv,bone_weights,
    index_list,face_list,vertex_buffer,limb,material,tangents,buffer,sizeof}

enum FBX_Model_Data {uuid,name,type,loc,geom_loc,rot,rot_ofs,rot_piv,
    pre_rot,pst_rot,rot_ord,rot_alt_mat,geom_rot,sca,sca_ofs,sca_piv,
    geom_sca,rot_act,parent,bind_mat,bind_imt,deformer_index, sizeof
    }
enum FBX_RotOrd {XYZ,XZY,YZX,YXZ,ZXY,ZYX}
enum FBX_Pose_Data {uuid,matrix,sizeof}
enum FBX_Deformer_Data {uuid,name,type,indexes,weights,transform,
    transform_link,transform_associate_model,bone_index,sizeof
    }
enum FBX_AnimCurveNode_Data {uuid,name,type,limb,transform,sizeof}
enum FBX_AnimCurve_Data {uuid,name,keytime,keyvalue,sizeof}
enum FBX_Skin_Data {uuid,name,type,deformers,sizeof}
enum FBX_ALayer_Data {uuid,name,nodes,length,sizeof}
enum FBX_AStack_Data {uuid,name,sizeof}
enum FBX_Connection_Data {index,data,link,res_index,res_data,sizeof}

enum FBX_Pool {geom, limbs, pose, deformer, anode, acurve, alayer, astack,
    skin, material, attrib, ties, bone_mtx, mesh_mtx, anim_index,
    anim_length, anim_time, anim_count, sizeof}
    
enum FBX_Anim {loc, rot, sca, sizeof }
enum FBX_Node {x,y,z,sizeof}
enum FBX_Timeline {time,value,sizeof}
enum FBX_PBR_Mat    {albedo,normal,emissive,arm,sizeof}
enum FBX_BuffTypes {bind, skin, geom, anim, sizeof}

#define fbx_clear
ds_list_destroy(FBX_TEMP_LISTS);
var spr, key;
key = ds_map_find_first(FBX_SPRITE_POOL);
while ds_map_exists(FBX_SPRITE_POOL,key)
{
    spr = FBX_SPRITE_POOL[? key];
    if sprite_exists(spr) then sprite_delete(spr);
    key = ds_map_find_next(FBX_SPRITE_POOL,key);
}
vertex_format_delete(FBX_VERTEX_FORMAT);

#define fbx_timeline_value_get
/// @arg timeline
/// @arg time
var timeline = argument0, time = argument1;
if array_length_1d(timeline) == 0 then return 0;
var tims = timeline[0];
var vals = timeline[1];
if array_length_1d(tims) == 0 return 0;
if array_length_1d(vals) == 0 return 0;
var t1, t2;
t1 = 0;
t2 = 0;
var len = array_length_1d(tims);
var size = len - 1;
var i = -1;
var j = 0;
while ++i < size
{
    t1 = tims[i];
    j = (i + 1) % len;
    t2 = tims[j];
    if time >= t1 and time <= t2 then break;
}
if time > t2 then return vals[size];

var part = ( time - t1 ) / (t2 - t1);
var v1 = vals[i];
var v2 = vals[j];
return part * (v2 - v1) + v1;

#define fbx_timeline_value_get_scale
/// @arg timeline
/// @arg time
var timeline = argument0, time = argument1;
if array_length_1d(timeline) == 0 then return 1;
var tims = timeline[0];
var vals = timeline[1];
if array_length_1d(tims) == 0 return 0;
if array_length_1d(vals) == 0 return 0;
var t1, t2;
t1 = 0;
t2 = 0;
var len = array_length_1d(tims);
var size = len - 1;
var i = -1;
var j = 0;
while ++i < size
{
    t1 = tims[i];
    j = (i + 1) % len;
    t2 = tims[j];
    if time >= t1 and time <= t2 then break;
}
if time > t2 then return vals[size];

var part = ( time - t1 ) / (t2 - t1);
var v1 = vals[i];
var v2 = vals[j];
return part * (v2 - v1) + v1;

#define fbx_timeline_value_360
/// @arg timeline
/// @arg time
var timeline = argument0, time = argument1;
if array_length_1d(timeline) == 0 then return 0;
var tims = timeline[0];
var vals = timeline[1];
if array_length_1d(tims) == 0 return 0;
if array_length_1d(vals) == 0 return 0;
var t1, t2;
t1 = 0;
t2 = 0;
var len = array_length_1d(tims);
var size = len - 1;
var i = -1;
var j = 0;
while ++i < size
{
    t1 = tims[i];
    j = (i + 1) % len;
    t2 = tims[j];
    if time >= t1 and time <= t2 then break;
}
if time > t2 then return vals[size];

var part = ( time - t1 ) / (t2 - t1);
var v1 = vals[i];
var v2 = vals[j];
return part * angle_difference(v2,v1) + v1;

#define fbx_timeline_length
/// @arg timeline
var timeline = argument0;
if array_length_1d(timeline) == 0 then return 0;
var time = timeline[0];
var size = array_length_1d(time) - 1;
var len = size < 0 ? 0: time[size];
return len;

#define fbx_anode_length
/// @arg anode
var anode = argument0;
var lx,ly,lz;
if array_length_1d(anode) == 0 then return 0;
lx = fbx_timeline_length(anode[0]);
ly = fbx_timeline_length(anode[1]);
lz = fbx_timeline_length(anode[2]);
return max(lx,ly,lz);

#define fbx_alayer_length
//!#import Blank
var layr/*:FBX_ALayer_Data*/ = argument0;
;
var maxtime, nodes, i, len, lt,lr,ls,time,node;
maxtime = 0;
nodes = layr[FBX_ALayer_Data.nodes];
i = -1;
len = array_length_1d(nodes);
while ++i < len
{
    node = nodes[i];
    if not is_array(node) then continue;
    lt = fbx_anode_length(node[0]);
    lr = fbx_anode_length(node[1]);
    ls = fbx_anode_length(node[2]);
    time = max(lt,lr,ls);
    maxtime = max(maxtime, time);
}
return maxtime;

#define fbx_limb_get_mat
//!#import Blank
var limb/*:FBX_Model_Data*/ = argument0;
;
var loc = limb[FBX_Model_Data.loc];
var rot = limb[FBX_Model_Data.rot];
var sca = limb[FBX_Model_Data.sca];

return fbx_build_matrix(loc[0],loc[1],loc[2],-rot[0],-rot[1],-rot[2],sca[0],sca[1],sca[2] );

#define fbx_limb_geom_mat
//!#import Blank
var limb/*:FBX_Model_Data*/ = argument0;
;
var loc = limb[FBX_Model_Data.geom_loc];
var rot = limb[FBX_Model_Data.geom_rot];
var sca = limb[FBX_Model_Data.geom_sca];

return fbx_build_matrix(loc[0],loc[1],loc[2],-rot[0],-rot[1],-rot[2],sca[0],sca[1],sca[2] );

#define fbx_limb_pre_rot
//!#import Blank
var limb/*:FBX_Model_Data*/ = argument0;
;
var rot = limb[FBX_Model_Data.pre_rot];

return fbx_build_matrix(0,0,0,-rot[0],-rot[1],-rot[2],1,1,1 );

#define fbx_build_bind_pose
/// @arg poses
/// @arg limbs
//!#import Blank
var poses = argument0, limbs = argument1;
;
var i, j, len, limb/*:FBX_Model_Data*/, poses_len, pose/*:FBX_Pose_Data*/,
    lid, pid;
var len = array_length_1d(limbs);
var i = -1;
while ++i < len
{
    limb = limbs[i];
    lid = limb[FBX_Model_Data.uuid];
    poses_len = array_length_1d(poses);
    j = -1;
    while ++j < poses_len
    {
        pose = poses[j];
        pid = pose[FBX_Pose_Data.uuid];
        if lid != pid then continue;
        var mat = pose[FBX_Pose_Data.matrix];
        limb[@FBX_Model_Data.bind_mat] = mat;
        limb[@FBX_Model_Data.bind_imt] = fbx_matrix_inverse( mat );
        break;
    }
}

#define fbx_build_bone_weight_list
/// @arg models
// for each geometry skin make list of bone index
// for each deformer add its index and weight to bone index list
//!#import Blank
var models = argument0;
var length, i, m/*:FBX_Model*/, skin/*:FBX_Skin_Data*/,defs, defdat/*:FBX_Deformer_Data*/,
    bidx, defs_len, j, indexes, weights, ind_size, k, ind, array, bw, 
    morphers, bone_index;
length = array_length_1d(models);
i = -1;
while ++i < length 
{
    m = models[i];
    skin = m[FBX_Model.skin];
    if skin == noone then continue;
    defs = skin[FBX_Skin_Data.deformers];
    morphers = m[FBX_Model.morphers];
    bidx = fbx_ds_list_create();
    m[@FBX_Model.bone_weights]  = bidx;
    defs_len = array_length_1d(defs);
    j = -1;
    while ++j < defs_len
    {
        defdat = defs[j];
        indexes = defdat[FBX_Deformer_Data.indexes];
        weights = defdat[FBX_Deformer_Data.weights];
        bone_index = defdat[FBX_Deformer_Data.bone_index];
        morphers[@ bone_index ] = j;
        if is_array(indexes) then continue;
        ind_size = ds_list_size(indexes);
        k = -1;
        while ++k < ind_size
        {
            ind = indexes[|k];
            array = bidx[| ind];
            if not is_array(array)
            {
                array = [];
                bidx[| ind] = array;
            }
            bw = [ j,weights[| k] ];
            fbx_array_push(array,bw);
        }
    }
}

#define fbx_build_tangents_list
/// @arg lpos
/// @arg luvs
/// @arg lnrm
var lpos = argument0, luvs = argument1, lnrm = argument2;
var ltng, psize, i, vid1, vid2, vid3, tid1, tid2, tid3, v1, v2, v3,
    uv1, uv2, uv3, n1, n2, n3, t1, t2, t3, tng;
ltng = fbx_ds_list_create();
psize = ds_list_size(lpos) / 9;
i = -1;
while ++i < psize
{
    vid1 = i * 9;
    vid2 = vid1+3;
    vid3 = vid2+3;
    tid1 = i * 6;
    tid2 = tid1 + 2;
    tid3 = tid2 + 2;
    v1 = [ lpos[| vid1], lpos[| vid1+1], lpos[| vid1+2] ];
    v2 = [ lpos[| vid2], lpos[| vid2+1], lpos[| vid2+2] ];
    v3 = [ lpos[| vid3], lpos[| vid3+1], lpos[| vid3+2] ];
    uv1 = [ luvs[| tid1], luvs[| tid1 + 1] ];
    uv2 = [ luvs[| tid2], luvs[| tid2 + 1] ];
    uv3 = [ luvs[| tid3], luvs[| tid3 + 1] ];
    tng = fbx_build_tangent(v1,v2,v3,uv1,uv2,uv3);
    n1 = [ lnrm[| vid1], lnrm[| vid1+1], lnrm[| vid1+2] ];
    n2 = [ lnrm[| vid2], lnrm[| vid2+1], lnrm[| vid2+2] ];
    n3 = [ lnrm[| vid3], lnrm[| vid3+1], lnrm[| vid3+2] ];
    t1 = fbx_tangent_nrm(tng, n1 );
    t2 = fbx_tangent_nrm(tng, n2 );
    t3 = fbx_tangent_nrm(tng, n3 );
    ds_list_add( ltng, t1[0], t1[1], t1[2] );
    ds_list_add( ltng, t2[0], t2[1], t2[2] );
    ds_list_add( ltng, t3[0], t3[1], t3[2] );
}
return ltng;

#define fbx_build_vertex_buffers
/// @arg models
/// @arg limbs
//!#import Blank
var models = argument0, limbs = argument1;
var mat, length, i, m/*:FBX_Model*/, b, verts, norms, uvs, bweight, indexes, skin,
    size, j, vid, tid, nid, vv, nn, pid, bwt, bsz, bones, weigh, k, bw, bc, wc,
    limb/*:FBX_Model_Data*/, tangs;
length = array_length_1d(models);
i = -1;
while ++i < length 
{
    m = models[i];
    // here should be triangulation
    verts   = m[FBX_Model.vertices];
    norms   = m[FBX_Model.normals];
    tangs   = m[FBX_Model.tangents];
    uvs     = m[FBX_Model.uv];
    bweight = m[FBX_Model.bone_weights];
    indexes = m[FBX_Model.index_list];
    skin    = m[FBX_Model.skin];
    limb    = limbs[ m[FBX_Model.limb] ];
    mat     = limb[FBX_Model_Data.bind_mat];
    size = ds_list_size(verts) / 3;
    if size == 0
    {
        continue;
    }
    
    tangs = fbx_build_tangents_list(verts, uvs, norms );
    
    b = vertex_create_buffer();
    vertex_begin(b, FBX_VERTEX_FORMAT);
    j = -1;
    if skin == noone
    {
        while ++j < size
        {
            vid = j * 3;
            tid = j * 2;
            nid = vid;
            vertex_position_3d(b,verts[|vid],verts[|vid+1],verts[|vid+2]);
            vertex_normal(b,norms[|nid],norms[|nid+1],norms[|nid+2]);
            vertex_texcoord(b,uvs[|tid],1-uvs[|tid+1]);
            var tang = [tangs[|nid],tangs[|nid+1],tangs[|nid+2]];
            tang = fbx_convert_vector_to_rgb(tang);
            vertex_color(b,tang,1);
            vertex_color(b,0,0);
            vertex_color(b,c_white,1);
        }
    }
    else 
    {
        while ++j < size
        {
            vid = j * 3;
            tid = j * 2;
            nid = vid;
            vv = [ verts[|vid],verts[|vid+1],verts[|vid+2] ];
            nn = [ norms[|nid],norms[|nid+1],norms[|nid+2] ];
            vv = matrix_transform_vertex(mat,vv[0],vv[1],vv[2]);
            nn = matrix_transform_vertex(mat,nn[0],nn[1],nn[2]);
            vertex_position_3d(b,vv[0],vv[1],vv[2]);
            vertex_normal(b,nn[0],nn[1],nn[2]);
            vertex_texcoord(b,uvs[|tid],1-uvs[|tid+1]);
            var tang = [tangs[|nid],tangs[|nid+1],tangs[|nid+2]];
            tang = fbx_convert_vector_to_rgb(tang);
            vertex_color(b,tang,1);
            
            pid = indexes[| j];
            bwt = bweight[| pid];
            bsz = array_length_1d(bwt);
            bones = [];
            weigh = [];
            k = -1;
            while ++k < 4
            {
                if k < bsz
                {
                    bw = bwt[k];
                    bones[k] = bw[0];
                    weigh[k] = bw[1] * 255;
                }
                else
                {
                    bones[k] = 0;
                    weigh[k] = 0;
                }
            }
            
            bc = fbx_color_array_to_rgb( bones );
            wc = fbx_color_array_to_rgb( weigh );
            
            vertex_color(b,bc,bones[3]);
            vertex_color(b,wc,weigh[3]);
        }
    }
    vertex_end(b);
    m[@FBX_Model.buffer] = buffer_create_from_vertex_buffer(b, buffer_fixed, 1 );
    vertex_freeze(b);
    m[@FBX_Model.vertex_buffer] = b;
}

#define fbx_ds_list_create
var list = ds_list_create();
fbx_ds_list_add_list(FBX_TEMP_LISTS, list);
return list;

#define fbx_draw
//!#import blank.* as Blank
var d/*:FBX_Pool*/ = argument0;
var transmat = d[FBX_Pool.mesh_mtx];
var models = d[FBX_Pool.geom];
var bone_mtx = d[FBX_Pool.bone_mtx];
var sample = [];
var world_mat = matrix_get(matrix_world);

var len = array_length_1d(models);
var i = -1;
while ++i < len
{
    var m/*:FBX_Model*/ = models[i];
    var b = m[FBX_Model.vertex_buffer];
    var s/*:FBX_Skin_Data*/ = m[FBX_Model.skin];
    sample = [];
    if s == noone
    {
        sample = matrix_build_identity();
    }
    else
    {
        var morphers = s[FBX_Skin_Data.deformers];
        var mlen = array_length_1d(morphers);
        sample = [];
        var j = -1;
        while ++j < mlen
        {
            var morpher/*:FBX_Deformer_Data*/ = morphers[j];
            var bindex = morpher[FBX_Deformer_Data.bone_index];
            fbx_array_concat(sample, transmat[bindex] );
        }
    }
    
    var limb_index = m[FBX_Model.limb];
    matrix_set(matrix_world, matrix_multiply( bone_mtx[limb_index], world_mat ) );
    
    var u_bones = shader_get_uniform(shader_current(), "u_bones");
    shader_set_uniform_f_array( u_bones, sample);
    var albedo = m[FBX_Model.material];
    if is_array(albedo)
    {
        albedo = fbx_material_set(albedo);
    }
    if b != noone 
    {
        vertex_submit(b,pr_trianglelist,albedo);
    }
}

#define fbx_frame_matrix
/// @arg anim
/// @arg time
var anim = argument0, time = argument1;
var atx,aty,atz, arx,ary,arz, asx,asy,asz, at, ar, as;
at  = anim[0];
if array_length_1d(at) == 0 or !is_array(at)
{
    atx = 0;aty = 0;atz = 0;
}
else
{
    atx = fbx_timeline_value_get(at[0],time);
    aty = fbx_timeline_value_get(at[1],time);
    atz = fbx_timeline_value_get(at[2],time);
}
ar  = anim[1];
if array_length_1d(ar) == 0 or !is_array(ar)
{
    arx = 0;ary = 0;arz = 0;
}
else
{
    arx = -fbx_timeline_value_360(ar[0],time);
    ary = -fbx_timeline_value_360(ar[1],time);
    arz = -fbx_timeline_value_360(ar[2],time);
}
as  = anim[2];
if array_length_1d(as) == 0 then {asx = 1;asy = 1;asz = 1;}
else
{
    asx = fbx_timeline_value_get_scale(as[0],time);
    asy = fbx_timeline_value_get_scale(as[1],time);
    asz = fbx_timeline_value_get_scale(as[2],time);
}

return fbx_build_matrix(atx,aty,atz,arx,ary,arz,asx,asy,asz);


#define fbx_animate
//!#import Blank
var fbx/*:FBX_Pool*/ = argument0, tick = argument1;
;
var limbs   = fbx[FBX_Pool.limbs];
var alayer = fbx[FBX_Pool.alayer];
if fbx[FBX_Pool.anim_count] == 0 return false;
var anim_index = fbx[FBX_Pool.anim_index];
var lay/*:FBX_ALayer_Data*/ = alayer[anim_index];
var limb_anim = lay[FBX_ALayer_Data.nodes];
var bone_mtx = fbx[FBX_Pool.bone_mtx];
var mesh_mtx = fbx[FBX_Pool.mesh_mtx];
var size = array_length_1d(limb_anim);
var time = fbx[FBX_Pool.anim_time] + tick;
var anim_len = fbx[FBX_Pool.anim_length];
if time >= anim_len then time -= anim_len;
fbx[@FBX_Pool.anim_time] = time;

var i = -1;
while ++i < size
{
    var anim = limb_anim[i];
    if not is_array(anim) then continue;
    var amt = fbx_frame_matrix( anim, time );

    var limb/*:FBX_Model_Data*/ = limbs[i];
    var parent = limb[FBX_Model_Data.parent];
    if parent != noone
    {
        amt = matrix_multiply(amt,bone_mtx[parent]);
    }
    bone_mtx[@ i] = amt;
    
    mesh_mtx[@ i] = matrix_multiply(limb[FBX_Model_Data.bind_imt],amt);
}

#define fbx_read
/// @arg fbx
//!#import Blank
var fbx = argument0;
var d/*:FBX_Pool*/ = fbx_collect_data( fbx );

// here we use script names instead of sctipt indexes
// because if script defined in extension then it is possible to
// get correct index for it only using asset_get_index
fbx_connect( "fbx_connect_curve_to_node", d[FBX_Pool.anode],d[FBX_Pool.acurve],d[FBX_Pool.ties]);
fbx_connect( "fbx_connect_limbs", d[FBX_Pool.limbs],d[FBX_Pool.limbs],d[FBX_Pool.ties]);
fbx_connect( "fbx_connect_bones_to_deformers", d[FBX_Pool.deformer],d[FBX_Pool.limbs], d[FBX_Pool.ties] );
fbx_connect( "fbx_connect_clusters_to_skins", d[FBX_Pool.skin], d[FBX_Pool.deformer], d[FBX_Pool.ties]);
fbx_connect( "fbx_connect_anode_to_limbs", d[FBX_Pool.limbs], d[FBX_Pool.anode], d[FBX_Pool.ties]);
fbx_connect( "fbx_connect_anode_to_alayer", d[FBX_Pool.alayer], d[FBX_Pool.anode], d[FBX_Pool.ties]);
fbx_connect( "fbx_connect_skin_to_geometry", d[FBX_Pool.geom], d[FBX_Pool.skin], d[FBX_Pool.ties]);
fbx_connect( "fbx_connect_geom_to_limb",d[FBX_Pool.limbs],d[FBX_Pool.geom],d[FBX_Pool.ties]);

fbx_build_bind_pose(d[FBX_Pool.pose],d[FBX_Pool.limbs]);
fbx_build_bone_weight_list(d[FBX_Pool.geom]);
fbx_build_vertex_buffers(d[FBX_Pool.geom],d[FBX_Pool.limbs]);

/// BUILD BONES
var bone_matrix = [];
var mesh_matrix = [];
var model_data = d[FBX_Pool.limbs];
var size, i, md/*:FBX_Model_Data*/, par_id, mtx, inst;
var size = array_length_1d(model_data);
var i = -1;
while ++i < size
{
    var md/*:FBX_Model_Data*/ = model_data[i];
    mtx = md[FBX_Model_Data.bind_mat];
    // var lmb_mat = fbx_limb_get_mat( md );
    // var pre_rot = fbx_limb_pre_rot(md);
    // var geo_mat = fbx_limb_geom_mat( md );
    // pre_rot = matrix_multiply( pre_rot, geo_mat );
    // if i == 0 then mtx = matrix_multiply( lmb_mat, pre_rot );
    // else mtx = matrix_multiply( pre_rot, lmb_mat );
    // var inst = instance_create_layer(0,0,layer,obj_bone);
    // inst.mtx = mtx;
    // inst.index = i;
    bone_matrix[i] = matrix_build_identity();
    mesh_matrix[i] = matrix_build_identity();
}
fbx_trace( "NUMBER OF BONES: ", size );

d[@FBX_Pool.bone_mtx] = bone_matrix;
d[@FBX_Pool.mesh_mtx] = mesh_matrix;

var alayer = d[FBX_Pool.alayer];
var alength = array_length_1d( alayer );
d[@FBX_Pool.anim_count] = alength;
d[@FBX_Pool.anim_time] = 0;

var i = -1;
while ++i < alength
{
    var anim_index = d[FBX_Pool.anim_index];
    var lay/*:FBX_ALayer_Data*/ = alayer[anim_index];
    lay[@FBX_ALayer_Data.length] = fbx_alayer_length(lay);
}

ds_list_clear(FBX_TEMP_LISTS);
ds_list_destroy(fbx);

return d;

#define fbx_animation_set
//!#import Blank
var fbx/*:FBX_Pool*/ = argument0, index = argument1;
var anim_count, layers, lay;
anim_count = fbx[FBX_Pool.anim_count];
if anim_count == 0 then return 0;
index = index % anim_count;
var layers = fbx[FBX_Pool.alayer];
var lay/*:FBX_ALayer_Data*/ = layers[index];
fbx[@FBX_Pool.anim_index] = index;
fbx[@FBX_Pool.anim_time] = 0;
fbx[@FBX_Pool.anim_length] = lay[FBX_ALayer_Data.length];

#define fbx_load
/// @arg filename
var filename = argument0;
var fbx = fbx_parse(filename);

return fbx_read(fbx);

#define fbx_save_json
/// @arg fbx
var fbx = argument0;
var map = ds_map_create();
ds_map_add_list(map,"FBX",fbx);
var jencoded = json_encode(map);
var file = file_text_open_write("fbx.json");
file_text_write_string(file,jencoded);
file_text_close(file);
