#define fbx_elem_id
///fbx_elem_id(fbx_elem)
return argument0[| FBX_NAME];

#define fbx_elem_type
///fbx_elem_type(fbx_elem)
return argument0[| FBX_TYPE];

#define fbx_elem_props
///fbx_elem_props(fbx_elem)
return argument0[| FBX_DATA];

#define fbx_elem_elems
///fbx_elem_elems(fbx_elem)
return argument0[| FBX_TREE];

#define fbx_elem_uuid
///fbx_elem_uuid(fbx_elem)
var data = argument0[| FBX_DATA];
return data[| 0];

#define fbx_elem_name
///fbx_elem_name(fbx_elem)
var data = argument0[| FBX_DATA];
return fbx_string_to_array(data[| 1], chr(1) );

#define fbx_elem_find_first
/// @arg fbx_elem
/// @arg key
var fbx_elem = argument0, key = argument1;
var tree, length, i, elem, name;
tree    = fbx_elem[|FBX_TREE];
length  = ds_list_size(tree);
i = -1;
while ++i < length
{
    elem = tree[|i];
    name = elem[|FBX_NAME];
    if name == key then return elem;
}
return noone;

#define fbx_elem_prop_first
/// @arg elem
/// @arg elem_id
var elem = argument0, elem_id = argument1;
if elem == noone then return noone;
var elem_p70 = fbx_elem_find_first(elem,"Properties70");
if elem_p70 == noone then return noone;
var elems = elem_p70[| FBX_TREE];
var i = -1;
var size = ds_list_size( elems )
while ++i < size
{
    var e = elems[| i];
    var name = e[| FBX_NAME];
    if name != "P" then continue;
    var data = e[| FBX_DATA];
    if data[| 0] == elem_id return data;
}
return noone;

#define fbx_elem_prop_value
/// @arg fbx_elem
/// @arg i
var fbx_elem = argument0, i = argument1;
var props = fbx_elem[| FBX_DATA];
return props[| i];

#define fbx_elem_prop_vector
/// @arg fbx_elem
/// @arg property
/// @arg def_value
var fbx_elem = argument0, property = argument1, def_value = argument2;
var res = fbx_elem_prop_first(fbx_elem,property);
if res == noone then return def_value;
return [res[| 4], res[| 5], res[| 6] ];

#define fbx_elem_prop_bool
/// @arg fbx_elem
/// @arg property
/// @arg def_value
var fbx_elem = argument0, property = argument1, def_value = argument2;
var res = fbx_elem_prop_first(fbx_elem,property);
if res == noone then return def_value;
return res[| 4];

#define fbx_elem_prop_enum
/// @arg fbx_elem
/// @arg property
/// @arg def_value
var fbx_elem = argument0, property = argument1, def_value = argument2;
var res = fbx_elem_prop_first(fbx_elem,property);
if res == noone then return def_value;
return res[| 4];

#define fbx_elem_property
/// @arg elem
/// @arg child_name
/// @arg prop_index
/// @arg def_value
var elem = argument0, child_name = argument1, prop_index = argument2, def_value = argument3;
var e = fbx_elem_find_first(elem,child_name);
if e == noone then return def_value
return fbx_elem_prop_value(e,prop_index);

#define fbx_elem_geom_layer
/// @arg node
/// @arg layer_name
/// @arg index_list
//!#import fbx_elem.* as FBX_Elem
var node/*:FBX_Elem*/ = argument0, layer_name = argument1, index_list = argument2;
;
var layr/*:FBX_Elem*/, map_inf, ref_inf, raw_name, ind_name, raw_list, ind_list,
    type, list, direct_list;
layr    = fbx_elem_find_first(node, layer_name );
if layr == noone then return noone;
map_inf = fbx_elem_property(layr, "MappingInformationType",0,"");
ref_inf = fbx_elem_property(layr, "ReferenceInformationType",0,"");

// trace( layer_name, map_inf, ref_inf );

switch layer_name
{
    case "LayerElementNormal":
        raw_name    = "Normals";
        ind_name    = "NormalsIndex";
        type        = 1;
    break;
    case "LayerElementBinormal":
        raw_name    = "Binormals";
        ind_name    = "BinormalsIndex";
        type        = 1;
    break;
    case "LayerElementTangent":
        raw_name    = "Tangents";
        ind_name    = "TangentsIndex";
        type        = 1;
    break;
    default:
        raw_name    = "UV";
        ind_name    = "UVIndex";
        type        = 0;
    break;
}

if ref_inf == "IndexToDirect"
{
    raw_list = fbx_elem_property(layr, raw_name,0,-4 );
    ind_list = fbx_elem_property(layr, ind_name,0,-4 );
    
    list = fbx_create_direct_list( raw_list, ind_list, type );
}
else // Direct
{
    list = fbx_elem_property(layr, raw_name,0,-4 );
}

if map_inf == "ByPolygonVertex"
{
    return list;
}
else // ByVertex or ByVertice
{
    direct_list = fbx_create_direct_list( list, index_list, type );
    return direct_list;
}

#define fbx_create_direct_list
/// @arg raw_list
/// @arg ind_list
/// @arg type
var raw_list = argument0, ind_list = argument1, type = argument2;
var list, length, i,j, uvid, px,py,pz;
list = fbx_ds_list_create();
length = ds_list_size(ind_list);
i = -1;

if type == 1
{
    while ++i < length 
    {
        uvid = ind_list[|i] * 3;
        px = raw_list[|uvid];
        py = raw_list[|uvid+1];
        pz = raw_list[|uvid+2];
        ds_list_add(list,px,py,pz);
    }
}
else
{
    while ++i < length 
    {
        uvid = ind_list[|i] * 2;
        uvid = max( uvid, 0);
        px = raw_list[|uvid];
        py = raw_list[|uvid+1];
        ds_list_add(list,px,py);
    }
}

return list;