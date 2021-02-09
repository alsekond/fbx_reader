{
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": -1,
  "extensionVersion": "0.0.1",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2018-08-20T07:00:10",
  "license": "",
  "description": "",
  "helpfile": "",
  "iosProps": false,
  "tvosProps": false,
  "androidProps": false,
  "installdir": "",
  "files": [
    {"filename":"fbx.gml","origname":"","init":"fbx_init","final":"fbx_clear","kind":2,"uncompress":false,"functions":[
        {"externalName":"fbx_init","kind":11,"help":"","hidden":true,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"fbx_init","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_clear","kind":11,"help":"","hidden":true,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"fbx_clear","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_timeline_value_get","kind":2,"help":"fbx_timeline_value_get(timeline, time)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_timeline_value_get","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_timeline_value_get_scale","kind":2,"help":"fbx_timeline_value_get_scale(timeline, time)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_timeline_value_get_scale","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_timeline_value_360","kind":2,"help":"fbx_timeline_value_360(timeline, time)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_timeline_value_360","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_timeline_length","kind":2,"help":"fbx_timeline_length(timeline)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_timeline_length","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_anode_length","kind":2,"help":"fbx_anode_length(anode)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_anode_length","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_alayer_length","kind":11,"help":"","hidden":true,"returnType":2,"argCount":1,"args":[],"resourceVersion":"1.0","name":"fbx_alayer_length","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_limb_get_mat","kind":11,"help":"","hidden":true,"returnType":2,"argCount":1,"args":[],"resourceVersion":"1.0","name":"fbx_limb_get_mat","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_limb_geom_mat","kind":11,"help":"","hidden":true,"returnType":2,"argCount":1,"args":[],"resourceVersion":"1.0","name":"fbx_limb_geom_mat","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_limb_pre_rot","kind":11,"help":"","hidden":true,"returnType":2,"argCount":1,"args":[],"resourceVersion":"1.0","name":"fbx_limb_pre_rot","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_build_bind_pose","kind":2,"help":"fbx_build_bind_pose(poses, limbs)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_build_bind_pose","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_build_bone_weight_list","kind":2,"help":"fbx_build_bone_weight_list(models)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_build_bone_weight_list","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_build_tangents_list","kind":2,"help":"fbx_build_tangents_list(lpos, luvs, lnrm)","hidden":false,"returnType":2,"argCount":3,"args":[
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_build_tangents_list","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_build_vertex_buffers","kind":2,"help":"fbx_build_vertex_buffers(models, limbs)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_build_vertex_buffers","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_ds_list_create","kind":11,"help":"","hidden":true,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"fbx_ds_list_create","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_draw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":1,"args":[],"resourceVersion":"1.0","name":"fbx_draw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_frame_matrix","kind":2,"help":"fbx_frame_matrix(anim, time)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_frame_matrix","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_animate","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[],"resourceVersion":"1.0","name":"fbx_animate","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_read","kind":2,"help":"fbx_read(fbx)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_read","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_animation_set","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[],"resourceVersion":"1.0","name":"fbx_animation_set","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_load","kind":2,"help":"fbx_load(filename)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_load","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_save_json","kind":2,"help":"fbx_save_json(fbx)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_save_json","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        {"value":"global.fbx_ktime","hidden":false,"resourceVersion":"1.0","name":"FBX_KTIME","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"0","hidden":false,"resourceVersion":"1.0","name":"FBX_NAME","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"1","hidden":false,"resourceVersion":"1.0","name":"FBX_TYPE","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"2","hidden":false,"resourceVersion":"1.0","name":"FBX_DATA","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"3","hidden":false,"resourceVersion":"1.0","name":"FBX_TREE","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"global.fbx_temp_lists","hidden":false,"resourceVersion":"1.0","name":"FBX_TEMP_LISTS","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"global.fbx_sprite_pool","hidden":false,"resourceVersion":"1.0","name":"FBX_SPRITE_POOL","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"global.fbx_vertex_format","hidden":false,"resourceVersion":"1.0","name":"FBX_VERTEX_FORMAT","tags":[],"resourceType":"GMExtensionConstant",},
      ],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"fbx_init","path":"extensions/fbx/fbx.yy",},
        null,
        {"name":"fbx_timeline_value_get","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_timeline_value_360","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_timeline_length","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_anode_length","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_alayer_length","path":"extensions/fbx/fbx.yy",},
        null,
        {"name":"fbx_build_bind_pose","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_build_bone_weight_list","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_build_vertex_buffers","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_clear","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_ds_list_create","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_draw","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_animate","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_read","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_load","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_save_json","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_timeline_value_get_scale","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_limb_get_mat","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_limb_geom_mat","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_limb_pre_rot","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_build_tangents_list","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_frame_matrix","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_animation_set","path":"extensions/fbx/fbx.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"fbx_parse.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"fbx_buffer_read_string_ubyte","kind":2,"help":"fbx_buffer_read_string_ubyte(buffer)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_buffer_read_string_ubyte","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_parse_read_array","kind":2,"help":"fbx_parse_read_array(buffer, data_type)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_parse_read_array","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_parse_read_type","kind":2,"help":"fbx_parse_read_type(buffer, type)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_parse_read_type","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_parse_read_elem","kind":2,"help":"fbx_parse_read_elem(b, element_type, block_len)","hidden":false,"returnType":2,"argCount":3,"args":[
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_parse_read_elem","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_parse","kind":2,"help":"fbx_parse(filename)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_parse","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"fbx_buffer_read_string_ubyte","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_parse_read_array","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_parse_read_type","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_parse_read_elem","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_parse","path":"extensions/fbx/fbx.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"fbx_common.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"fbx_array_push","kind":2,"help":"fbx_array_push(array, value)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_array_push","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_array_from_string","kind":2,"help":"fbx_array_from_string(str)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_array_from_string","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_array_concat","kind":2,"help":"fbx_array_concat(a1, a2)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_array_concat","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_array_from_list","kind":2,"help":"fbx_array_from_list(list)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_array_from_list","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_buffer_read_len","kind":2,"help":"fbx_buffer_read_len(buff, len)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_buffer_read_len","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_buffer_read_data","kind":2,"help":"fbx_buffer_read_data(buffer, size)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_buffer_read_data","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_ds_list_add_list","kind":2,"help":"fbx_ds_list_add_list(list, value)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_ds_list_add_list","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_ds_list_add_map","kind":2,"help":"fbx_ds_list_add_map(list, map)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_ds_list_add_map","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_ds_list_from_array","kind":2,"help":"fbx_ds_list_from_array(array)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_ds_list_from_array","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_string_from_array","kind":2,"help":"fbx_string_from_array(array)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_string_from_array","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_string_to_array","kind":2,"help":"fbx_string_to_array(str, delim)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_string_to_array","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_assert","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[],"resourceVersion":"1.0","name":"fbx_assert","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_trace","kind":11,"help":"","hidden":true,"returnType":2,"argCount":-1,"args":[],"resourceVersion":"1.0","name":"fbx_trace","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_convert_vector_to_rgb","kind":2,"help":"fbx_convert_vector_to_rgb(v)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_convert_vector_to_rgb","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_convert_value_to_rgb","kind":2,"help":"fbx_convert_value_to_rgb(value)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_convert_value_to_rgb","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_color_array_to_rgb","kind":2,"help":"fbx_color_array_to_rgb(clr)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_color_array_to_rgb","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_build_tangent","kind":2,"help":"fbx_build_tangent(p1, p2, p3, t1, t2, t3)","hidden":false,"returnType":2,"argCount":6,"args":[
            2,
            2,
            2,
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_build_tangent","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_tangent_nrm","kind":2,"help":"fbx_tangent_nrm(tng, nrm)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_tangent_nrm","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_v2_sub","kind":2,"help":"fbx_v2_add(a:v2,b:v2)->v2 :subtract vector b from vector a","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_v2_sub","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_v3_mul","kind":2,"help":"fbx_v3_mul(a:v3,m:real)->v3 :multiply vector by number","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_v3_mul","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_v3_nrm","kind":2,"help":"fbx_v3_nrm(a:v3)->v3 :normalize vector","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_v3_nrm","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_v3_dot","kind":2,"help":"fbx_v3_dot(a:v3,b:v3)->real :return dot product","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_v3_dot","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_v3_sub","kind":2,"help":"fbx_v3_sub(a:v3,b:v3)->v3 :subtract vector b from vector a","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_v3_sub","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_build_matrix","kind":2,"help":"fbx_build_matrix(px, py, pz, rx, ry, rz, sx, sy, sz)","hidden":false,"returnType":2,"argCount":9,"args":[
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_build_matrix","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_matrix_inverse","kind":2,"help":"fbx_matrix_inverse(m)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_matrix_inverse","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_sprite_load","kind":2,"help":"fbx_sprite_load(name)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_sprite_load","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_material_set","kind":11,"help":"","hidden":true,"returnType":2,"argCount":1,"args":[],"resourceVersion":"1.0","name":"fbx_material_set","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_shader_set_sampler","kind":2,"help":"fbx_shader_set_sampler(tex, name)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_shader_set_sampler","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_material_assign","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[],"resourceVersion":"1.0","name":"fbx_material_assign","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_material_assign_by_index","kind":11,"help":"","hidden":true,"returnType":2,"argCount":3,"args":[],"resourceVersion":"1.0","name":"fbx_material_assign_by_index","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_load_pbr_mat","kind":2,"help":"fbx_load_pbr_mat(name)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_load_pbr_mat","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"fbx_array_push","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_array_from_string","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_array_concat","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_buffer_read_len","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_buffer_read_data","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_ds_list_add_list","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_ds_list_from_array","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_string_from_array","path":"extensions/fbx/fbx.yy",},
        {"name":"fbx_assert","path":"extensions/fbx/fbx.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"fbx_collect.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"fbx_collect_model_data","kind":2,"help":"fbx_collect_model_data(node, array)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_collect_model_data","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_collect_pose_data","kind":2,"help":"fbx_collect_pose_data(pose, array)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_collect_pose_data","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_collect_geometry_data","kind":2,"help":"fbx_collect_geometry_data(node, array)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_collect_geometry_data","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_collect_deformer_data","kind":2,"help":"fbx_collect_deformer_data(node, cluster_array, skin_array)","hidden":false,"returnType":2,"argCount":3,"args":[
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_collect_deformer_data","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_collect_anim_curve_node_data","kind":2,"help":"fbx_collect_anim_curve_node_data(node, array)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_collect_anim_curve_node_data","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_collect_anim_curve_data","kind":2,"help":"fbx_collect_anim_curve_data(node, array)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_collect_anim_curve_data","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_collect_alayer_data","kind":2,"help":"fbx_collect_alayer_data(node, array)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_collect_alayer_data","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_collect_astack_data","kind":2,"help":"fbx_collect_astack_data(node, array)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_collect_astack_data","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_collect_node_attrib_data","kind":2,"help":"fbx_collect_node_attrib_data(node, array)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_collect_node_attrib_data","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_collect_material_data","kind":2,"help":"fbx_collect_material_data(node, array)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_collect_material_data","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_connections_map_create","kind":2,"help":"fbx_connections_map_create(fbx_conn)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_connections_map_create","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_collect_data","kind":2,"help":"fbx_collect_data(fbx)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_collect_data","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_create_vertices_list","kind":2,"help":"fbx_create_vertices_list(vertices, faces, indexes)","hidden":false,"returnType":2,"argCount":3,"args":[
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_create_vertices_list","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"fbx_connect.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"fbx_connect_curve_to_node","kind":2,"help":"fbx_connect_curve_to_node(data)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_connect_curve_to_node","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_connect_limbs","kind":2,"help":"fbx_connect_limbs(data)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_connect_limbs","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_connect_bones_to_deformers","kind":2,"help":"fbx_connect_bones_to_deformers(data)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_connect_bones_to_deformers","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_connect_clusters_to_skins","kind":2,"help":"fbx_connect_clusters_to_skins(data)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_connect_clusters_to_skins","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_connect_anode_to_limbs","kind":2,"help":"fbx_connect_anode_to_limbs(data)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_connect_anode_to_limbs","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_connect_anode_to_alayer","kind":2,"help":"fbx_connect_anode_to_alayer(data)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_connect_anode_to_alayer","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_connect_skin_to_geometry","kind":2,"help":"fbx_connect_skin_to_geometry(data)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_connect_skin_to_geometry","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_connect_geom_to_limb","kind":2,"help":"fbx_connect_geom_to_limb(data)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_connect_geom_to_limb","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_connect","kind":2,"help":"fbx_connect(conn_type, a1, a2, conmap)","hidden":false,"returnType":2,"argCount":4,"args":[
            2,
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_connect","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_data_by_uuid","kind":2,"help":"fbx_data_by_uuid(array, uuid)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_data_by_uuid","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"fbx_elem.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"fbx_elem_id","kind":2,"help":"fbx_elem_id(fbx_elem)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_elem_id","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_elem_type","kind":2,"help":"fbx_elem_type(fbx_elem)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_elem_type","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_elem_props","kind":2,"help":"fbx_elem_props(fbx_elem)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_elem_props","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_elem_elems","kind":2,"help":"fbx_elem_elems(fbx_elem)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_elem_elems","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_elem_uuid","kind":2,"help":"fbx_elem_uuid(fbx_elem)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_elem_uuid","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_elem_name","kind":2,"help":"fbx_elem_name(fbx_elem)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"fbx_elem_name","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_elem_find_first","kind":2,"help":"fbx_elem_find_first(fbx_elem, key)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_elem_find_first","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_elem_prop_first","kind":2,"help":"fbx_elem_prop_first(elem, elem_id)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_elem_prop_first","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_elem_prop_value","kind":2,"help":"fbx_elem_prop_value(fbx_elem, i)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_elem_prop_value","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_elem_prop_vector","kind":2,"help":"fbx_elem_prop_vector(fbx_elem, property, def_value)","hidden":false,"returnType":2,"argCount":3,"args":[
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_elem_prop_vector","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_elem_prop_bool","kind":2,"help":"fbx_elem_prop_bool(fbx_elem, property, def_value)","hidden":false,"returnType":2,"argCount":3,"args":[
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_elem_prop_bool","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_elem_prop_enum","kind":2,"help":"fbx_elem_prop_enum(fbx_elem, property, def_value)","hidden":false,"returnType":2,"argCount":3,"args":[
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_elem_prop_enum","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_elem_property","kind":2,"help":"fbx_elem_property(elem, child_name, prop_index, def_value)","hidden":false,"returnType":2,"argCount":4,"args":[
            2,
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_elem_property","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_elem_geom_layer","kind":2,"help":"fbx_elem_geom_layer(node, layer_name, index_list)","hidden":false,"returnType":2,"argCount":3,"args":[
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_elem_geom_layer","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_create_direct_list","kind":2,"help":"fbx_create_direct_list(raw_list, ind_list, type)","hidden":false,"returnType":2,"argCount":3,"args":[
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_create_direct_list","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"fbx_elem_id","path":"extensions/fbx/fbx.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"fbx_buffer.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"fbx_build_anim_buffer","kind":11,"help":"","hidden":true,"returnType":2,"argCount":1,"args":[],"resourceVersion":"1.0","name":"fbx_build_anim_buffer","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_vbuff_save","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[],"resourceVersion":"1.0","name":"fbx_vbuff_save","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_buffer_write_array","kind":2,"help":"fbx_buffer_write_array(buffer, type, array)","hidden":false,"returnType":2,"argCount":3,"args":[
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_buffer_write_array","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_buffer_insert","kind":2,"help":"fbx_buffer_insert(buffer, type, size, source)","hidden":false,"returnType":2,"argCount":4,"args":[
            2,
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"fbx_buffer_insert","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_build_skin_buffer","kind":11,"help":"","hidden":true,"returnType":2,"argCount":1,"args":[],"resourceVersion":"1.0","name":"fbx_build_skin_buffer","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_build_bind_buffer","kind":11,"help":"","hidden":true,"returnType":2,"argCount":1,"args":[],"resourceVersion":"1.0","name":"fbx_build_bind_buffer","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"fbx_object_anim_save","kind":11,"help":"","hidden":true,"returnType":2,"argCount":3,"args":[],"resourceVersion":"1.0","name":"fbx_object_anim_save","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
  ],
  "classname": "",
  "tvosclassname": "",
  "tvosdelegatename": null,
  "iosdelegatename": null,
  "androidclassname": "",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "iosplistinject": "",
  "tvosplistinject": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidactivityinject": "",
  "gradleinject": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "copyToTargets": -1,
  "iosCocoaPods": "",
  "tvosCocoaPods": "",
  "iosCocoaPodDependencies": "",
  "tvosCocoaPodDependencies": "",
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "resourceVersion": "1.2",
  "name": "fbx",
  "tags": [],
  "resourceType": "GMExtension",
}