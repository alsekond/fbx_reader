#define fbx_connect_curve_to_node
/// @arg data
//!#import Blank
var data/*:FBX_Connection_Data*/ = argument0;
;
var node/*:FBX_AnimCurveNode_Data*/ = data[FBX_Connection_Data.data];
var link_elem = data[FBX_Connection_Data.link];
var axis = fbx_elem_prop_value(link_elem,3);
var src/*:FBX_AnimCurve_Data*/ = data[FBX_Connection_Data.res_data];
var index = noone;
switch axis
{
    case "d|X": index = 0;break;
    case "d|Y": index = 1;break;
    case "d|Z": index = 2;break;
}
if index >= 0
{
    var trn = node[FBX_AnimCurveNode_Data.transform];
    trn[@index] = [src[FBX_AnimCurve_Data.keytime],src[FBX_AnimCurve_Data.keyvalue]];
}
return false; /// return false because we don't need to break while

#define fbx_connect_limbs
/// @arg data
//!#import FBX_Connection_Data
var data/*:FBX_Connection_Data*/ = argument0;
;
var child/*:FBX_Model_Data*/ = data[FBX_Connection_Data.res_data];
child[@FBX_Model_Data.parent] = data[FBX_Connection_Data.index];
return false;

#define fbx_connect_bones_to_deformers
/// @arg data
//!#import Blank
var data/*:FBX_Connection_Data*/ = argument0;
;
var deform/*:FBX_Deformer_Data*/ = data[FBX_Connection_Data.data];
deform[@FBX_Deformer_Data.bone_index] = data[FBX_Connection_Data.res_index];
var limb/*:FBX_Model_Data*/ = data[FBX_Connection_Data.res_data];
limb[@FBX_Model_Data.deformer_index] = data[FBX_Connection_Data.index];
return true; /// return false because we need to break while

#define fbx_connect_clusters_to_skins
/// @arg data
//!#import Blank
var data/*:FBX_Connection_Data*/ = argument0;
;
var skin/*:FBX_Skin_Data*/ = data[FBX_Connection_Data.data];
var child = data[FBX_Connection_Data.res_data];
var sdefs = skin[FBX_Skin_Data.deformers];
fbx_array_push(sdefs,child);
return false; /// return false because we don't need to break while

#define fbx_connect_anode_to_limbs
/// @arg data
//!#import Blank
var data/*:FBX_Connection_Data*/ = argument0;
;
var link_elem = data[FBX_Connection_Data.link];
var type = fbx_elem_prop_value(link_elem,3);
var anode/*:FBX_AnimCurveNode_Data*/ = data[FBX_Connection_Data.res_data];
anode[@FBX_AnimCurveNode_Data.limb] = data[FBX_Connection_Data.index];
anode[@FBX_AnimCurveNode_Data.type] = type;
return false; /// return false because we don't need to break while

#define fbx_connect_anode_to_alayer
/// @arg data
//!#import FBX_Connection_Data
var data/*:FBX_Connection_Data*/ = argument0;
;
var parent/*:FBX_ALayer_Data*/ = data[FBX_Connection_Data.data];
var nodes = parent[FBX_ALayer_Data.nodes];
var len = array_length_1d(nodes);
var node/*:FBX_AnimCurveNode_Data*/ = data[FBX_Connection_Data.res_data];
var index = node[FBX_AnimCurveNode_Data.limb];
if index < 0 then return false;
var ntrans;
if index < len and index >= 0
{
    ntrans = nodes[index];
    if not is_array(ntrans) 
    {
        ntrans = [[],[],[]];
        nodes[@ index] = ntrans;
    }
}
else
{
    ntrans = [[],[],[]];
    nodes[@ index] = ntrans;
}

var j = noone;
switch node[FBX_AnimCurveNode_Data.type]
{
    case "Lcl Translation":
    j = 0;
    break;
    case "Lcl Rotation":
    j = 1;
    break;
    case "Lcl Scaling":
    j = 2;
    break;
}
if j != noone
{
    ntrans[@ j] = node[FBX_AnimCurveNode_Data.transform];
}

//fbx_array_push(nodes,data.res_index);
return false; /// return false because we don't need to break while

#define fbx_connect_skin_to_geometry
/// @arg data
//!#import FBX_Connection_Data
var data/*:FBX_Connection_Data*/ = argument0;
;
var parent/*:FBX_Model*/ = data[FBX_Connection_Data.data];
parent[@FBX_Model.skin] = data[FBX_Connection_Data.res_data];
return false; /// return false because we don't need to break while

#define fbx_connect_geom_to_limb
/// @arg data
//!#import FBX_Connection_Data
var data/*:FBX_Connection_Data*/ = argument0;
;
var geom/*:FBX_Model*/ = data[FBX_Connection_Data.res_data];
geom[@FBX_Model.limb] = data[FBX_Connection_Data.index];
return false; /// return false because we don't need to break while

#define fbx_connect
/// @arg conn_type
/// @arg a1
/// @arg a2
/// @arg conmap
//!#import FBX_Connection_Data
var conn_type = argument0, a1 = argument1, a2 = argument2, conmap = argument3;
var size, i, chunk, uuid, con_list, list_size, j, con, child_uuid,
    link_elem, conn_data/*:FBX_Connection_Data*/, con_res, res, script_index;
script_index = asset_get_index(conn_type);
size = array_length_1d(a1);
i = -1;
while ++i < size
{
    chunk = a1[i];
    uuid = chunk[0];
    con_list = conmap[? uuid];
    if is_undefined(con_list) then continue;
    list_size = ds_list_size(con_list);
    j = -1;
    while ++j < list_size
    {
        con = con_list[| j];
        child_uuid  = con[0];
        link_elem   = con[1];
        res = fbx_data_by_uuid(a2,child_uuid);
        if res == noone then continue;
        conn_data = array_create(FBX_Connection_Data.sizeof);
        conn_data[@FBX_Connection_Data.index]     = i;            // parent index
        conn_data[@FBX_Connection_Data.data]      = chunk;        // parent itself
        conn_data[@FBX_Connection_Data.link]      = link_elem;    // link elem
        conn_data[@FBX_Connection_Data.res_index] = res[0];       // child index
        conn_data[@FBX_Connection_Data.res_data]  = res[1];       // child itself
        con_res = script_execute(script_index, conn_data);
        if con_res then break;
    }
}

#define fbx_data_by_uuid
/// @arg array
/// @arg uuid
var array = argument0, uuid = argument1;
var size = array_length_1d(array);
var i = -1;
while ++i < size
{
    var data = array[i];
    if data[0] == uuid then return [i,data];
}
return noone;