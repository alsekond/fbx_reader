{
    "id": "d0cc0119-8815-482a-a2df-09cb3fe656a7",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "fbx",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": -1,
    "date": "2018-00-20 07:08:10",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "98b44ab0-c9fb-4e8a-8faa-9b6d9fb49907",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "89bdeaa3-2181-95d9-b27b-f3b789c06471",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "FBX_KTIME",
                    "hidden": false,
                    "value": "global.fbx_ktime"
                },
                {
                    "id": "2c97e2c2-6d16-eb38-0adc-da85d455eadd",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "FBX_NAME",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "96edb6b9-6542-158c-53fb-6a48449ac64c",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "FBX_TYPE",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "f3c7c5ca-f467-5638-b8fa-a16f2697c1cf",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "FBX_DATA",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "182d80ff-75c1-4c2e-01e3-791dcd56c5ed",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "FBX_TREE",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "fe532327-1310-d976-e6df-136dd71f42ef",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "FBX_TEMP_LISTS",
                    "hidden": false,
                    "value": "global.fbx_temp_lists"
                },
                {
                    "id": "5be74e76-dbc9-9c0f-bd32-a32ab7ebb874",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "FBX_SPRITE_POOL",
                    "hidden": false,
                    "value": "global.fbx_sprite_pool"
                },
                {
                    "id": "e2f0760c-76df-8820-c8f1-a36193cd0ba5",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "FBX_VERTEX_FORMAT",
                    "hidden": false,
                    "value": "global.fbx_vertex_format"
                }
            ],
            "copyToTargets": -1,
            "filename": "fbx.gml",
            "final": "fbx_clear",
            "functions": [
                {
                    "id": "28573cf3-e57e-ca26-53a9-d75f9c906825",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "fbx_init",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_init",
                    "returnType": 2
                },
                {
                    "id": "2c6da071-3578-184d-bcdf-173eec919d96",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "fbx_clear",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_clear",
                    "returnType": 2
                },
                {
                    "id": "ba07cde9-af00-1c54-e4b7-c26d94114f2c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_timeline_value_get",
                    "help": "fbx_timeline_value_get(timeline, time)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_timeline_value_get",
                    "returnType": 2
                },
                {
                    "id": "8aff8c91-0e8a-9597-cc39-b19572f438d8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_timeline_value_get_scale",
                    "help": "fbx_timeline_value_get_scale(timeline, time)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_timeline_value_get_scale",
                    "returnType": 2
                },
                {
                    "id": "c8b4e42c-a389-8b0d-c27b-238842d7cd4a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_timeline_value_360",
                    "help": "fbx_timeline_value_360(timeline, time)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_timeline_value_360",
                    "returnType": 2
                },
                {
                    "id": "c4380069-2ed9-9d4e-4442-8798f20b7a0d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_timeline_length",
                    "help": "fbx_timeline_length(timeline)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_timeline_length",
                    "returnType": 2
                },
                {
                    "id": "e09c007d-885a-e520-39d8-784db79cedb1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_anode_length",
                    "help": "fbx_anode_length(anode)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_anode_length",
                    "returnType": 2
                },
                {
                    "id": "b155526d-75f0-c765-88a6-d9f6bb096aea",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        
                    ],
                    "externalName": "fbx_alayer_length",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_alayer_length",
                    "returnType": 2
                },
                {
                    "id": "460a7bb5-1081-214f-a862-746017e26a2f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        
                    ],
                    "externalName": "fbx_limb_get_mat",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_limb_get_mat",
                    "returnType": 2
                },
                {
                    "id": "9abda855-42c3-b085-d50a-1883e81b25ff",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        
                    ],
                    "externalName": "fbx_limb_geom_mat",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_limb_geom_mat",
                    "returnType": 2
                },
                {
                    "id": "3cf5fed1-aa81-f71d-310a-ed8fff80c8f7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        
                    ],
                    "externalName": "fbx_limb_pre_rot",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_limb_pre_rot",
                    "returnType": 2
                },
                {
                    "id": "75388a5c-d93e-7ee7-ad82-79670ca021f6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_build_bind_pose",
                    "help": "fbx_build_bind_pose(poses, limbs)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_build_bind_pose",
                    "returnType": 2
                },
                {
                    "id": "84a219a6-e78a-15b3-02f4-445dfb7cf49c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_build_bone_weight_list",
                    "help": "fbx_build_bone_weight_list(models)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_build_bone_weight_list",
                    "returnType": 2
                },
                {
                    "id": "8bd9d947-1d4c-efe9-d6af-4d59cdf43a3e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "fbx_build_tangents_list",
                    "help": "fbx_build_tangents_list(lpos, luvs, lnrm)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_build_tangents_list",
                    "returnType": 2
                },
                {
                    "id": "9d523c61-223f-0b5b-1700-1a14fc251d79",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_build_vertex_buffers",
                    "help": "fbx_build_vertex_buffers(models, limbs)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_build_vertex_buffers",
                    "returnType": 2
                },
                {
                    "id": "a914a1b8-6b43-8f3a-fe05-2f55119d59ab",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "fbx_ds_list_create",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_ds_list_create",
                    "returnType": 2
                },
                {
                    "id": "fd774884-0218-477c-e87b-092b4c297d3d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        
                    ],
                    "externalName": "fbx_draw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_draw",
                    "returnType": 2
                },
                {
                    "id": "b3ff52af-90ed-e97e-aab8-d239c1895d4a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_frame_matrix",
                    "help": "fbx_frame_matrix(anim, time)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_frame_matrix",
                    "returnType": 2
                },
                {
                    "id": "184a7c56-5b4f-dc0a-9dfc-2fb5bb285fc2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        
                    ],
                    "externalName": "fbx_animate",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_animate",
                    "returnType": 2
                },
                {
                    "id": "f37c3d41-2054-52d7-b8fa-e7b1ceeb9d06",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_read",
                    "help": "fbx_read(fbx)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_read",
                    "returnType": 2
                },
                {
                    "id": "a38a3eec-a076-ebc7-16ba-d82b98fe7685",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        
                    ],
                    "externalName": "fbx_animation_set",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_animation_set",
                    "returnType": 2
                },
                {
                    "id": "e10a547c-8e91-a608-eacd-f14885f4e975",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_load",
                    "help": "fbx_load(filename)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_load",
                    "returnType": 2
                },
                {
                    "id": "642b0d5a-75bc-04af-d967-b84c785b232f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_save_json",
                    "help": "fbx_save_json(fbx)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_save_json",
                    "returnType": 2
                }
            ],
            "init": "fbx_init",
            "kind": 2,
            "order": [
                "28573cf3-e57e-ca26-53a9-d75f9c906825",
                "df1171ed-0915-b575-f108-53eb36e63ed6",
                "ba07cde9-af00-1c54-e4b7-c26d94114f2c",
                "c8b4e42c-a389-8b0d-c27b-238842d7cd4a",
                "c4380069-2ed9-9d4e-4442-8798f20b7a0d",
                "e09c007d-885a-e520-39d8-784db79cedb1",
                "b155526d-75f0-c765-88a6-d9f6bb096aea",
                "c4ecfcb1-3f11-8413-0435-35321f992d6c",
                "75388a5c-d93e-7ee7-ad82-79670ca021f6",
                "84a219a6-e78a-15b3-02f4-445dfb7cf49c",
                "9d523c61-223f-0b5b-1700-1a14fc251d79",
                "2c6da071-3578-184d-bcdf-173eec919d96",
                "a914a1b8-6b43-8f3a-fe05-2f55119d59ab",
                "fd774884-0218-477c-e87b-092b4c297d3d",
                "184a7c56-5b4f-dc0a-9dfc-2fb5bb285fc2",
                "f37c3d41-2054-52d7-b8fa-e7b1ceeb9d06",
                "e10a547c-8e91-a608-eacd-f14885f4e975",
                "642b0d5a-75bc-04af-d967-b84c785b232f",
                "8aff8c91-0e8a-9597-cc39-b19572f438d8",
                "460a7bb5-1081-214f-a862-746017e26a2f",
                "9abda855-42c3-b085-d50a-1883e81b25ff",
                "3cf5fed1-aa81-f71d-310a-ed8fff80c8f7",
                "8bd9d947-1d4c-efe9-d6af-4d59cdf43a3e",
                "b3ff52af-90ed-e97e-aab8-d239c1895d4a",
                "a38a3eec-a076-ebc7-16ba-d82b98fe7685"
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "b2893980-3a36-44c1-a40b-685969198a3a",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "fbx_parse.gml",
            "final": "",
            "functions": [
                {
                    "id": "e491136b-301c-1db9-f5d6-54fd609ef8d8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_buffer_read_string_ubyte",
                    "help": "fbx_buffer_read_string_ubyte(buffer)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_buffer_read_string_ubyte",
                    "returnType": 2
                },
                {
                    "id": "02c16bbe-4bd8-0279-2c21-98ef75a5b891",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_parse_read_array",
                    "help": "fbx_parse_read_array(buffer, data_type)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_parse_read_array",
                    "returnType": 2
                },
                {
                    "id": "cd95252c-2898-4ef4-19dc-54af81a529cc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_parse_read_type",
                    "help": "fbx_parse_read_type(buffer, type)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_parse_read_type",
                    "returnType": 2
                },
                {
                    "id": "cc1bb96e-17fe-e811-9184-ad4342b4bd9f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "fbx_parse_read_elem",
                    "help": "fbx_parse_read_elem(b, element_type, block_len)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_parse_read_elem",
                    "returnType": 2
                },
                {
                    "id": "b66b77b6-c6fe-4a77-f859-66fe8d78e233",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_parse",
                    "help": "fbx_parse(filename)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_parse",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                "e491136b-301c-1db9-f5d6-54fd609ef8d8",
                "02c16bbe-4bd8-0279-2c21-98ef75a5b891",
                "cd95252c-2898-4ef4-19dc-54af81a529cc",
                "cc1bb96e-17fe-e811-9184-ad4342b4bd9f",
                "b66b77b6-c6fe-4a77-f859-66fe8d78e233"
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "966f8d40-94f1-4b6a-8437-d96ab8fa9bbb",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "fbx_common.gml",
            "final": "",
            "functions": [
                {
                    "id": "c95cbacd-831f-a398-0a13-e8f8370f6433",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_array_push",
                    "help": "fbx_array_push(array, value)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_array_push",
                    "returnType": 2
                },
                {
                    "id": "b195805b-3a48-51fc-06ba-6653ad83ac73",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_array_from_string",
                    "help": "fbx_array_from_string(str)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_array_from_string",
                    "returnType": 2
                },
                {
                    "id": "fd3894ff-4603-4722-83ef-99d4b6bb7216",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_array_concat",
                    "help": "fbx_array_concat(a1, a2)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_array_concat",
                    "returnType": 2
                },
                {
                    "id": "d0272591-5184-e6f9-b342-8f85773a027a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_array_from_list",
                    "help": "fbx_array_from_list(list)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_array_from_list",
                    "returnType": 2
                },
                {
                    "id": "3188d73c-7b50-52e2-a6b7-d7a6ffc28482",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_buffer_read_len",
                    "help": "fbx_buffer_read_len(buff, len)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_buffer_read_len",
                    "returnType": 2
                },
                {
                    "id": "31d7c45e-ecf2-58c2-6132-e0d7acec0adc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_buffer_read_data",
                    "help": "fbx_buffer_read_data(buffer, size)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_buffer_read_data",
                    "returnType": 2
                },
                {
                    "id": "4af3ea51-f28d-3de9-7801-698b628ea043",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_ds_list_add_list",
                    "help": "fbx_ds_list_add_list(list, value)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_ds_list_add_list",
                    "returnType": 2
                },
                {
                    "id": "3b138f59-e335-ea01-eddb-d0bd8c0a2f12",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_ds_list_add_map",
                    "help": "fbx_ds_list_add_map(list, map)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_ds_list_add_map",
                    "returnType": 2
                },
                {
                    "id": "98abc4a3-d1f6-2987-c86b-0ed84da1162c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_ds_list_from_array",
                    "help": "fbx_ds_list_from_array(array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_ds_list_from_array",
                    "returnType": 2
                },
                {
                    "id": "32bb2b40-0a7b-fd22-03b0-36cb14cc277f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_string_from_array",
                    "help": "fbx_string_from_array(array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_string_from_array",
                    "returnType": 2
                },
                {
                    "id": "9e125b1c-da44-b37c-71c2-5cc203bbeb7f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_string_to_array",
                    "help": "fbx_string_to_array(str, delim)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_string_to_array",
                    "returnType": 2
                },
                {
                    "id": "201c6057-cf88-8329-44b4-101196acaf64",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        
                    ],
                    "externalName": "fbx_assert",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_assert",
                    "returnType": 2
                },
                {
                    "id": "fc79f23c-f095-c282-4f1a-8e242a25095e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "fbx_trace",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_trace",
                    "returnType": 2
                },
                {
                    "id": "d070b873-c030-78b1-976c-ffb8ef73d2ef",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_convert_vector_to_rgb",
                    "help": "fbx_convert_vector_to_rgb(v)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_convert_vector_to_rgb",
                    "returnType": 2
                },
                {
                    "id": "150a2a19-7925-97f9-cc07-29713edfb7c2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_convert_value_to_rgb",
                    "help": "fbx_convert_value_to_rgb(value)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_convert_value_to_rgb",
                    "returnType": 2
                },
                {
                    "id": "c088fed3-4db1-56ab-3c54-103e4f2c1469",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_color_array_to_rgb",
                    "help": "fbx_color_array_to_rgb(clr)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_color_array_to_rgb",
                    "returnType": 2
                },
                {
                    "id": "2446f21b-9272-3a27-4cf0-cadcda40c110",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 6,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "fbx_build_tangent",
                    "help": "fbx_build_tangent(p1, p2, p3, t1, t2, t3)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_build_tangent",
                    "returnType": 2
                },
                {
                    "id": "abaaff9e-4392-5a80-20e5-41edabcfb616",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_tangent_nrm",
                    "help": "fbx_tangent_nrm(tng, nrm)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_tangent_nrm",
                    "returnType": 2
                },
                {
                    "id": "4ce05231-9b48-4843-6ac8-f723366df329",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_v2_sub",
                    "help": "fbx_v2_add(a:v2,b:v2)->v2 :subtract vector b from vector a",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_v2_sub",
                    "returnType": 2
                },
                {
                    "id": "d9b43d52-4db3-17d6-b274-3aace869adce",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_v3_mul",
                    "help": "fbx_v3_mul(a:v3,m:real)->v3 :multiply vector by number",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_v3_mul",
                    "returnType": 2
                },
                {
                    "id": "507e8b60-c383-29be-afe8-3e83ef6a6c87",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_v3_nrm",
                    "help": "fbx_v3_nrm(a:v3)->v3 :normalize vector",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_v3_nrm",
                    "returnType": 2
                },
                {
                    "id": "0cd10fdf-b77f-1794-c7fa-e4a773f94b90",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_v3_dot",
                    "help": "fbx_v3_dot(a:v3,b:v3)->real :return dot product",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_v3_dot",
                    "returnType": 2
                },
                {
                    "id": "b136bada-1fcc-7827-52ef-dd8b169d04af",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_v3_sub",
                    "help": "fbx_v3_sub(a:v3,b:v3)->v3 :subtract vector b from vector a",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_v3_sub",
                    "returnType": 2
                },
                {
                    "id": "52997c50-027b-7ac8-d21b-b64d05377a84",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 9,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "fbx_build_matrix",
                    "help": "fbx_build_matrix(px, py, pz, rx, ry, rz, sx, sy, sz)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_build_matrix",
                    "returnType": 2
                },
                {
                    "id": "556a4b42-a8d6-fece-a8d2-88b19265feb5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_matrix_inverse",
                    "help": "fbx_matrix_inverse(m)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_matrix_inverse",
                    "returnType": 2
                },
                {
                    "id": "67884939-5dc3-e943-533a-b32ac9c71a93",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_sprite_load",
                    "help": "fbx_sprite_load(name)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_sprite_load",
                    "returnType": 2
                },
                {
                    "id": "6f635980-c09e-720e-9603-03324dbbdc7b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        
                    ],
                    "externalName": "fbx_material_set",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_material_set",
                    "returnType": 2
                },
                {
                    "id": "39cf21ec-a2db-9439-8eda-9533c4f7dd30",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_shader_set_sampler",
                    "help": "fbx_shader_set_sampler(tex, name)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_shader_set_sampler",
                    "returnType": 2
                },
                {
                    "id": "8ebe51b8-749d-5790-a22f-ec1d592e17ed",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        
                    ],
                    "externalName": "fbx_material_assign",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_material_assign",
                    "returnType": 2
                },
                {
                    "id": "6EABFDE0-114C-FE20-7457-C9E430299C15",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        
                    ],
                    "externalName": "fbx_material_assign_by_index",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_material_assign_by_index",
                    "returnType": 2
                },
                {
                    "id": "fd2a8446-2535-c5d4-afcb-a41bcd8bfd60",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_load_pbr_mat",
                    "help": "fbx_load_pbr_mat(name)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_load_pbr_mat",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                "c95cbacd-831f-a398-0a13-e8f8370f6433",
                "b195805b-3a48-51fc-06ba-6653ad83ac73",
                "fd3894ff-4603-4722-83ef-99d4b6bb7216",
                "3188d73c-7b50-52e2-a6b7-d7a6ffc28482",
                "31d7c45e-ecf2-58c2-6132-e0d7acec0adc",
                "4af3ea51-f28d-3de9-7801-698b628ea043",
                "98abc4a3-d1f6-2987-c86b-0ed84da1162c",
                "32bb2b40-0a7b-fd22-03b0-36cb14cc277f",
                "201c6057-cf88-8329-44b4-101196acaf64"
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "8e7cf98e-2d2b-4390-b5ef-49f9321090ce",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "fbx_collect.gml",
            "final": "",
            "functions": [
                {
                    "id": "528fce37-776d-4675-b523-8e9878081d44",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_collect_model_data",
                    "help": "fbx_collect_model_data(node, array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_collect_model_data",
                    "returnType": 2
                },
                {
                    "id": "9d289e37-7813-1081-ca4f-00079073da69",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_collect_pose_data",
                    "help": "fbx_collect_pose_data(pose, array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_collect_pose_data",
                    "returnType": 2
                },
                {
                    "id": "22463ebd-1bbf-d567-ffc6-8438dbe8709d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_collect_geometry_data",
                    "help": "fbx_collect_geometry_data(node, array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_collect_geometry_data",
                    "returnType": 2
                },
                {
                    "id": "170fc2ed-e7e4-5093-903e-ef1eeb970361",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "fbx_collect_deformer_data",
                    "help": "fbx_collect_deformer_data(node, cluster_array, skin_array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_collect_deformer_data",
                    "returnType": 2
                },
                {
                    "id": "2de557ad-0f81-6e2c-1be7-cbf1620086db",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_collect_anim_curve_node_data",
                    "help": "fbx_collect_anim_curve_node_data(node, array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_collect_anim_curve_node_data",
                    "returnType": 2
                },
                {
                    "id": "1d09ca9d-cb15-dfa7-b07b-08617b955cbb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_collect_anim_curve_data",
                    "help": "fbx_collect_anim_curve_data(node, array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_collect_anim_curve_data",
                    "returnType": 2
                },
                {
                    "id": "13daed3e-3888-df9e-2866-29a97f210480",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_collect_alayer_data",
                    "help": "fbx_collect_alayer_data(node, array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_collect_alayer_data",
                    "returnType": 2
                },
                {
                    "id": "064a208e-c887-0d48-1a3c-5487842fb2ef",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_collect_astack_data",
                    "help": "fbx_collect_astack_data(node, array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_collect_astack_data",
                    "returnType": 2
                },
                {
                    "id": "0786afc2-f8a9-1399-b9f6-0babed1dd929",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_collect_node_attrib_data",
                    "help": "fbx_collect_node_attrib_data(node, array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_collect_node_attrib_data",
                    "returnType": 2
                },
                {
                    "id": "a9685de2-d1dc-ae65-b941-37e5dc8ddf46",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_collect_material_data",
                    "help": "fbx_collect_material_data(node, array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_collect_material_data",
                    "returnType": 2
                },
                {
                    "id": "50f7c04e-bd8f-ed1f-6b24-5162a1b8404e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_connections_map_create",
                    "help": "fbx_connections_map_create(fbx_conn)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_connections_map_create",
                    "returnType": 2
                },
                {
                    "id": "c779fe9a-4566-ff6f-b972-c0149cda5c9a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_collect_data",
                    "help": "fbx_collect_data(fbx)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_collect_data",
                    "returnType": 2
                },
                {
                    "id": "1558c0e8-7d68-b1d0-5b09-a8dc83f04338",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "fbx_create_vertices_list",
                    "help": "fbx_create_vertices_list(vertices, faces, indexes)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_create_vertices_list",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "f9ee1749-c4ab-4461-b6e1-ef522336cf05",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "fbx_connect.gml",
            "final": "",
            "functions": [
                {
                    "id": "a7d3edf1-f847-8393-3bab-c216fd9ae23d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_connect_curve_to_node",
                    "help": "fbx_connect_curve_to_node(data)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_connect_curve_to_node",
                    "returnType": 2
                },
                {
                    "id": "133bfe80-a194-a877-48de-78776731352d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_connect_limbs",
                    "help": "fbx_connect_limbs(data)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_connect_limbs",
                    "returnType": 2
                },
                {
                    "id": "4764fd45-3a1a-9dc6-6155-5468cc57a7c4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_connect_bones_to_deformers",
                    "help": "fbx_connect_bones_to_deformers(data)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_connect_bones_to_deformers",
                    "returnType": 2
                },
                {
                    "id": "ecf22287-47bc-7ce8-bcb2-fc700d837cbc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_connect_clusters_to_skins",
                    "help": "fbx_connect_clusters_to_skins(data)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_connect_clusters_to_skins",
                    "returnType": 2
                },
                {
                    "id": "eccdd933-8e0e-9900-dcce-b9414f259508",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_connect_anode_to_limbs",
                    "help": "fbx_connect_anode_to_limbs(data)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_connect_anode_to_limbs",
                    "returnType": 2
                },
                {
                    "id": "cfeb01b1-8791-c967-d85a-0c047a8d7e93",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_connect_anode_to_alayer",
                    "help": "fbx_connect_anode_to_alayer(data)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_connect_anode_to_alayer",
                    "returnType": 2
                },
                {
                    "id": "e81ab5fc-1a54-f35a-8a81-f58fe9368da9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_connect_skin_to_geometry",
                    "help": "fbx_connect_skin_to_geometry(data)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_connect_skin_to_geometry",
                    "returnType": 2
                },
                {
                    "id": "d6337cb7-8995-6b44-4d4c-684802b12933",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_connect_geom_to_limb",
                    "help": "fbx_connect_geom_to_limb(data)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_connect_geom_to_limb",
                    "returnType": 2
                },
                {
                    "id": "5fd47a3e-f46e-3d17-d928-ce0fbdc1a233",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "fbx_connect",
                    "help": "fbx_connect(conn_type, a1, a2, conmap)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_connect",
                    "returnType": 2
                },
                {
                    "id": "edac6da8-2663-2c17-b264-cf1d05385ebe",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_data_by_uuid",
                    "help": "fbx_data_by_uuid(array, uuid)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_data_by_uuid",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "8e2fc3ec-f112-4aae-8bb3-2a3e45798354",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "fbx_elem.gml",
            "final": "",
            "functions": [
                {
                    "id": "21b09dc2-c0d2-b715-5320-3fdd1e2105d2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_elem_id",
                    "help": "fbx_elem_id(fbx_elem)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_elem_id",
                    "returnType": 2
                },
                {
                    "id": "7f23a03a-98bf-b2ab-f620-b77f14d6f256",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_elem_type",
                    "help": "fbx_elem_type(fbx_elem)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_elem_type",
                    "returnType": 2
                },
                {
                    "id": "81195ad7-6415-7af7-4ba1-6fdf72263db6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_elem_props",
                    "help": "fbx_elem_props(fbx_elem)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_elem_props",
                    "returnType": 2
                },
                {
                    "id": "35790055-9ba6-6187-4613-83f842137738",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_elem_elems",
                    "help": "fbx_elem_elems(fbx_elem)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_elem_elems",
                    "returnType": 2
                },
                {
                    "id": "9a213564-648b-5786-9b1d-c7d06e5ef2e1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_elem_uuid",
                    "help": "fbx_elem_uuid(fbx_elem)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_elem_uuid",
                    "returnType": 2
                },
                {
                    "id": "81dbf74e-fdd4-a43c-9b9c-56b1d1b4f843",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "fbx_elem_name",
                    "help": "fbx_elem_name(fbx_elem)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_elem_name",
                    "returnType": 2
                },
                {
                    "id": "6633ac62-73ef-a951-b944-81b15bedbfe7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_elem_find_first",
                    "help": "fbx_elem_find_first(fbx_elem, key)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_elem_find_first",
                    "returnType": 2
                },
                {
                    "id": "89d41f2c-4742-8c73-c996-3fa4a1dfe867",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_elem_prop_first",
                    "help": "fbx_elem_prop_first(elem, elem_id)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_elem_prop_first",
                    "returnType": 2
                },
                {
                    "id": "4760c10b-68f1-d999-3a12-6739e89f13ec",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "fbx_elem_prop_value",
                    "help": "fbx_elem_prop_value(fbx_elem, i)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_elem_prop_value",
                    "returnType": 2
                },
                {
                    "id": "0cd1567a-8dfa-f971-74b3-641d3d238093",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "fbx_elem_prop_vector",
                    "help": "fbx_elem_prop_vector(fbx_elem, property, def_value)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_elem_prop_vector",
                    "returnType": 2
                },
                {
                    "id": "a310b83d-2698-8895-178d-8a5cb0d83427",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "fbx_elem_prop_bool",
                    "help": "fbx_elem_prop_bool(fbx_elem, property, def_value)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_elem_prop_bool",
                    "returnType": 2
                },
                {
                    "id": "3c0c775e-0e1f-a94a-3d20-8cb0e45bbb9e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "fbx_elem_prop_enum",
                    "help": "fbx_elem_prop_enum(fbx_elem, property, def_value)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_elem_prop_enum",
                    "returnType": 2
                },
                {
                    "id": "424b8dd9-2aca-9521-b346-22f70fe22a25",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "fbx_elem_property",
                    "help": "fbx_elem_property(elem, child_name, prop_index, def_value)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_elem_property",
                    "returnType": 2
                },
                {
                    "id": "7756aab2-1d79-427f-85fe-aaf26958e874",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "fbx_elem_geom_layer",
                    "help": "fbx_elem_geom_layer(node, layer_name, index_list)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_elem_geom_layer",
                    "returnType": 2
                },
                {
                    "id": "42b85916-f8dd-f178-23f8-62b22ca9ea78",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "fbx_create_direct_list",
                    "help": "fbx_create_direct_list(raw_list, ind_list, type)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_create_direct_list",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                "21b09dc2-c0d2-b715-5320-3fdd1e2105d2"
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "3e7c569c-5d62-4ad5-92ae-38cb09b88115",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "fbx_buffer.gml",
            "final": "",
            "functions": [
                {
                    "id": "bb0d4d6a-ca63-7b98-cbbb-25230bc0d6c5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        
                    ],
                    "externalName": "fbx_build_anim_buffer",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_build_anim_buffer",
                    "returnType": 2
                },
                {
                    "id": "43fa13d5-780b-2e91-ddaf-435724a4bf68",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        
                    ],
                    "externalName": "fbx_vbuff_save",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_vbuff_save",
                    "returnType": 2
                },
                {
                    "id": "a66f4d0f-7b64-3280-7620-134250119eeb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "fbx_buffer_write_array",
                    "help": "fbx_buffer_write_array(buffer, type, array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_buffer_write_array",
                    "returnType": 2
                },
                {
                    "id": "b8d57704-38aa-0822-3777-693d36d26747",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "fbx_buffer_insert",
                    "help": "fbx_buffer_insert(buffer, type, size, source)",
                    "hidden": false,
                    "kind": 2,
                    "name": "fbx_buffer_insert",
                    "returnType": 2
                },
                {
                    "id": "b0f7cfcc-1511-7228-77f9-cec9999589aa",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        
                    ],
                    "externalName": "fbx_build_skin_buffer",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_build_skin_buffer",
                    "returnType": 2
                },
                {
                    "id": "c34eb888-0e78-57ec-304b-f2aa45ffe63f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        
                    ],
                    "externalName": "fbx_build_bind_buffer",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_build_bind_buffer",
                    "returnType": 2
                },
                {
                    "id": "b428e42c-c1ee-a756-b903-25670a75c4e7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        
                    ],
                    "externalName": "fbx_object_anim_save",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "fbx_object_anim_save",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": null,
    "iosplistinject": "",
    "license": "",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": null,
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "0.0.1"
}