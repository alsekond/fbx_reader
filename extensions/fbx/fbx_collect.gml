#define fbx_collect_model_data
/// @arg node
/// @arg array
//!#import fbx_elem.* as FBX_Elem
var node/*:FBX_Elem*/ = argument0, array = argument1;
var dat/*:FBX_Model_Data*/ = array_create(FBX_Model_Data.sizeof);
dat[@FBX_Model_Data.uuid] = fbx_elem_uuid(node);
dat[@FBX_Model_Data.name] = fbx_elem_name(node);
dat[@FBX_Model_Data.type] = fbx_elem_prop_value(node, 2);
dat[@FBX_Model_Data.loc] = fbx_elem_prop_vector(node, "Lcl Translation",[0,0,0]);
dat[@FBX_Model_Data.rot] = fbx_elem_prop_vector(node, "Lcl Rotation",[0,0,0]);
dat[@FBX_Model_Data.sca] = fbx_elem_prop_vector(node, "Lcl Scaling",[1,1,1]);
dat[@FBX_Model_Data.geom_loc] = fbx_elem_prop_vector(node, "GeometricTranslation",[0,0,0]);
dat[@FBX_Model_Data.geom_rot] = fbx_elem_prop_vector(node, "GeometricRotation",[0,0,0]);
dat[@FBX_Model_Data.geom_sca] = fbx_elem_prop_vector(node, "GeometricScaling",[1,1,1]);
dat[@FBX_Model_Data.rot_ofs] = fbx_elem_prop_vector(node, "RotationOffset",[0,0,0]);
dat[@FBX_Model_Data.rot_piv] = fbx_elem_prop_vector(node, "RotationPivot",[0,0,0]);
dat[@FBX_Model_Data.sca_ofs] = fbx_elem_prop_vector(node, "ScalingOffset",[0,0,0]);
dat[@FBX_Model_Data.sca_piv] = fbx_elem_prop_vector(node, "ScalingPivot",[0,0,0]);
dat[@FBX_Model_Data.pre_rot] = fbx_elem_prop_vector(node, "PreRotation",[0,0,0]);
dat[@FBX_Model_Data.pst_rot] = fbx_elem_prop_vector(node, "PostRotation",[0,0,0]);
dat[@FBX_Model_Data.rot_act] = fbx_elem_prop_bool(node, "RotationActive",false);
dat[@FBX_Model_Data.rot_ord] = fbx_elem_prop_enum(node, "RotationOrder",0);
dat[@FBX_Model_Data.bind_mat] = matrix_build_identity();
dat[@FBX_Model_Data.bind_imt] = matrix_build_identity();
dat[@FBX_Model_Data.parent]  = noone;
dat[@FBX_Model_Data.deformer_index] = noone;
fbx_array_push(array, dat);

#define fbx_collect_pose_data
/// @arg pose
/// @arg array
//!#import fbx_elem.* as FBX_Elem
var pose/*:FBX_Elem*/ = argument0, array = argument1;
var tree = fbx_elem_elems(pose);
var length = ds_list_size(tree);
var i = -1;
while ++i < length 
{
    var node/*:FBX_Elem*/ = tree[|i];
    if fbx_elem_id(node) != "PoseNode" then continue;
    var nd/*:FBX_Elem*/ = fbx_elem_find_first(node, "Node");
    var dat/*:FBX_Pose_Data*/ = array_create(FBX_Pose_Data.sizeof);
    dat[@FBX_Pose_Data.uuid] = fbx_elem_prop_value(nd, 0);
    dat[@FBX_Pose_Data.matrix] = fbx_array_from_list( fbx_elem_property(node, "Matrix",0,[]) );
    fbx_array_push(array,dat);
}

#define fbx_collect_geometry_data
/// @arg node
/// @arg array
//!#import fbx_elem.* as FBX_Elem
var node/*:FBX_Elem*/ = argument0, array = argument1;
var vert_list, face_list, index_list, vertices, uv, normals, mdl/*:FBX_Model*/,
    tangents;
vert_list           = fbx_elem_property(node, "Vertices",0,-4);
face_list           = fbx_elem_property(node, "PolygonVertexIndex",0,-4 );

index_list      = fbx_ds_list_create();
vertices        = fbx_create_vertices_list(vert_list,face_list, index_list);
uv              = fbx_elem_geom_layer(node, "LayerElementUV", index_list);
normals         = fbx_elem_geom_layer(node, "LayerElementNormal", index_list);
tangents        = fbx_elem_geom_layer(node, "LayerElementTangent", index_list );
// trace( node.name(), ds_list_size( vertices ), 
//     ds_list_size( normals ), ds_list_size( uv ) );
if uv == noone or normals == noone then return false;
mdl = array_create(FBX_Model.sizeof);
mdl[@FBX_Model.uuid]        = fbx_elem_uuid(node);
mdl[@FBX_Model.name]        = fbx_elem_name(node);
mdl[@FBX_Model.type]        = fbx_elem_prop_value(node, 2);
mdl[@FBX_Model.skin]        = noone;
mdl[@FBX_Model.vertices]    = vertices;
mdl[@FBX_Model.normals]     = normals;
mdl[@FBX_Model.tangents]    = tangents;
mdl[@FBX_Model.uv]          = uv;
mdl[@FBX_Model.index_list]  = index_list;
mdl[@FBX_Model.face_list]   = face_list;
mdl[@FBX_Model.morphers]    = [];
mdl[@FBX_Model.vertex_buffer] = noone;
mdl[@FBX_Model.material]    = -1;
fbx_array_push(array,mdl);

#define fbx_collect_deformer_data
/// @arg node
/// @arg cluster_array
/// @arg skin_array
//!#import fbx_elem.* as FBX_Elem
var node/*:FBX_Elem*/ = argument0, cluster_array = argument1, skin_array = argument2;
var type = fbx_elem_prop_value(node, 2);
switch type
{
    case "Cluster":
        var dat/*:FBX_Deformer_Data*/ = array_create(FBX_Deformer_Data.sizeof);
        dat[@FBX_Deformer_Data.uuid] = fbx_elem_uuid(node);
        dat[@FBX_Deformer_Data.name] = fbx_elem_name(node);
        dat[@FBX_Deformer_Data.type] = type;
        dat[@FBX_Deformer_Data.indexes] = fbx_elem_property(node, "Indexes",0, [] );
        dat[@FBX_Deformer_Data.weights] = fbx_elem_property(node, "Weights",0,[] );
        dat[@FBX_Deformer_Data.transform] = fbx_array_from_list( fbx_elem_property(node, "Transform",0,[] ) );
        dat[@FBX_Deformer_Data.transform_link] = fbx_array_from_list( fbx_elem_property(node, "TransformLink",0,[] ) );
        // dat.transform_associate_model = fbx_array_from_list( node.property("TransformAssociateModel",0,[] ) );
        fbx_array_push( cluster_array, dat );
    break;
    case "Skin":
        var sdat/*:FBX_Skin_Data*/ = array_create(FBX_Skin_Data.sizeof);
        sdat[@FBX_Skin_Data.uuid] = fbx_elem_uuid(node);
        sdat[@FBX_Skin_Data.name] = fbx_elem_name(node);
        sdat[@FBX_Skin_Data.type] = type;
        sdat[@FBX_Skin_Data.deformers] = [];
        fbx_array_push( skin_array, sdat);
    break;
}

#define fbx_collect_anim_curve_node_data
/// @arg node
/// @arg array
//!#import fbx_elem.* as FBX_Elem
var node/*:FBX_Elem*/ = argument0, array = argument1;
var dat/*:FBX_AnimCurveNode_Data*/ = array_create(FBX_AnimCurveNode_Data.sizeof);
dat[@FBX_AnimCurveNode_Data.uuid] = fbx_elem_uuid(node);
dat[@FBX_AnimCurveNode_Data.name] = fbx_elem_name(node);
dat[@FBX_AnimCurveNode_Data.type] = "";
dat[@FBX_AnimCurveNode_Data.limb] = noone;
dat[@FBX_AnimCurveNode_Data.transform] = [[],[],[]];
fbx_array_push(array,dat);

#define fbx_collect_anim_curve_data
/// @arg node
/// @arg array
//!#import fbx_elem.* as FBX_Elem
var node/*:FBX_Elem*/ = argument0, array = argument1;
var dat/*:FBX_AnimCurve_Data*/ = array_create(FBX_AnimCurve_Data.sizeof);
dat[@FBX_AnimCurve_Data.uuid] = fbx_elem_uuid(node);
dat[@FBX_AnimCurve_Data.name] = fbx_elem_name(node);
var times_list = fbx_elem_property(node, "KeyTime",0,noone);
if times_list == noone
{
    fbx_array_push(array,[[],[]]);
    return false;
}
var size = ds_list_size(times_list);
var ktimes = [];
var i = -1;
while ++i < size 
{
    var key = times_list[| i];
    fbx_array_push(ktimes, key * FBX_KTIME);
}
dat[@FBX_AnimCurve_Data.keytime] = ktimes;
dat[@FBX_AnimCurve_Data.keyvalue] = fbx_array_from_list( fbx_elem_property(node, "KeyValueFloat",0,[]) );
fbx_array_push(array,dat);

#define fbx_collect_alayer_data
/// @arg node
/// @arg array
//!#import fbx_elem.* as FBX_Elem
var node/*:FBX_Elem*/ = argument0, array = argument1;
var dat/*:FBX_ALayer_Data*/ = array_create(FBX_ALayer_Data.sizeof);
dat[@FBX_ALayer_Data.uuid] = fbx_elem_uuid(node);
dat[@FBX_ALayer_Data.name] = fbx_elem_name(node);
dat[@FBX_ALayer_Data.nodes] = [];
dat[@FBX_ALayer_Data.length] = 0;
fbx_array_push(array,dat);

#define fbx_collect_astack_data
/// @arg node
/// @arg array
//!#import fbx_elem.* as FBX_Elem
var node/*:FBX_Elem*/ = argument0, array = argument1;
var dat/*:FBX_AStack_Data*/ = array_create(FBX_AStack_Data.sizeof);
dat[@FBX_AStack_Data.uuid] = fbx_elem_uuid(node);
dat[@FBX_AStack_Data.name] = fbx_elem_name(node);
fbx_array_push(array,dat);

#define fbx_collect_node_attrib_data
/// @arg node
/// @arg array
//!#import fbx_elem.* as FBX_Elem
var node/*:FBX_Elem*/ = argument0, array = argument1;

#define fbx_collect_material_data
/// @arg node
/// @arg array
//!#import fbx_elem.* as FBX_Elem
var node/*:FBX_Elem*/ = argument0, array = argument1;

#define fbx_connections_map_create
/// @arg fbx_conn
var fbx_conn = argument0;
var conn_map = ds_map_create();
var conn_map_reverse = ds_map_create();
fbx_ds_list_add_map(FBX_TEMP_LISTS,conn_map);
fbx_ds_list_add_map(FBX_TEMP_LISTS,conn_map_reverse);
var elems = fbx_conn[| FBX_TREE];
var i = -1;
var size = ds_list_size(elems);
while ++i < size
{
    var link = elems[| i];
    var type = link[| FBX_TYPE];
    var check_type = string_copy(type,2,2);
    if check_type != "LL" then continue;
    var data = link[| FBX_DATA];
    var src = data[| 1];
    var dst = data[| 2];
    var src_list;
    if ds_map_exists(conn_map,src) then src_list = conn_map[? src];
    else {src_list = ds_list_create(); ds_map_add_list(conn_map,src,src_list);}
    ds_list_add(src_list,[dst,link]);
    var dst_list;
    if ds_map_exists(conn_map_reverse,dst) then dst_list = conn_map_reverse[? dst];
    else {dst_list = ds_list_create(); ds_map_add_list(conn_map_reverse,dst,dst_list);}
    ds_list_add(dst_list,[src,link]);
}
return [conn_map,conn_map_reverse];

#define fbx_collect_data
/// @arg fbx
//!#import fbx_elem.* as FBX_Elem
//!#import Blank
var fbx/*:FBX_Elem*/ = argument0;
;
var nodes/*:FBX_Elem*/  = fbx_elem_find_first(fbx, "Objects");
var fbx_connections/*:FBX_Elem*/ = fbx_elem_find_first(fbx, "Connections");
if nodes == noone {show_error( "No Objects found", false);return noone;}
var elems = fbx_elem_elems(nodes);
if elems == noone {show_error( "No Elems found", false );return noone;}

if fbx_connections == noone {show_error( "No Connections found", false);return noone;}
var fbx_conns = fbx_connections_map_create(fbx_connections);
var conn_map_rev = fbx_conns[1];

var d/*:FBX_Pool*/;
var i = -1;
while ++i < FBX_Pool.sizeof
{
    d[i] = [];
}

d[@FBX_Pool.ties] = fbx_conns[1];
d[@FBX_Pool.anim_index] = 0;

var length = ds_list_size(elems);
var i = -1;
while ++i < length
{
    var node/*:FBX_Elem*/ = elems[|i];
    var name = fbx_elem_id(node);
    switch name 
    {
        case "Geometry":
        fbx_collect_geometry_data(node,d[FBX_Pool.geom]);
        break;
        case "Model":
        fbx_collect_model_data(node,d[FBX_Pool.limbs]);
        break;
        case "Pose":
        fbx_collect_pose_data(node,d[FBX_Pool.pose]);
        break;
        case "Deformer":
        fbx_collect_deformer_data(node,d[FBX_Pool.deformer],d[FBX_Pool.skin]);
        break;
        case "NodeAttribute":
        fbx_collect_node_attrib_data(node,d[FBX_Pool.attrib]);
        break;
        case "Material":
        fbx_collect_material_data(node,d[FBX_Pool.material]);
        break;
        case "AnimationStack":
        fbx_collect_astack_data(node,d[FBX_Pool.astack]);
        break;
        case "AnimationLayer":
        fbx_collect_alayer_data(node,d[FBX_Pool.alayer]);
        break;
        case "AnimationCurveNode":
        fbx_collect_anim_curve_node_data(node,d[FBX_Pool.anode]);
        break;
        case "AnimationCurve":
        fbx_collect_anim_curve_data( node, d[FBX_Pool.acurve] );
        break;
    }
}



return d;

#define fbx_create_vertices_list
/// @arg vertices
/// @arg faces
/// @arg indexes
var vertices = argument0, faces = argument1, indexes = argument2;
var vert, size, iface, j, index, length, i, fid, px, py, pz;
if faces == noone then return vertices;
vert = fbx_ds_list_create();
size = ds_list_size( faces );
iface = [];
j = -1;
while ++j < size {
    index = faces[|j];
    if index < 0 {
        index ^= -1;
        fbx_array_push(iface,index);
        length = array_length_1d(iface);
        i = -1;
        while ++i < length {
            ds_list_add(indexes,iface[i]);
            fid = iface[i] * 3;
            px = vertices[|fid];
            py = vertices[|fid+1];
            pz = vertices[|fid+2];
            ds_list_add(vert,px,py,pz);}
        iface=[];}
    else
        fbx_array_push(iface,index);}

return vert;