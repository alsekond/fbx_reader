gpu_set_ztestenable(true);

/// setting up camera and environment
var camx, camy, camz;
draw_clear( c_dkgray );
with obj_camera 
{
    camx = cpx;
    camy = cpy;
    camz = cpz;
    event_perform( ev_draw, 0 );
}

/// setting up shader, light direction and color, camera position,
/// reflection sampler, BRDF LUT sampler
/// helmet texture samplers
var sha = sha_pbr_mat;
shader_set( sha );
shader_set_float(   "u_LightDirection", -1,1,0 );
shader_set_float(   "u_Camera", camx, camy, camz );
shader_set_float(   "u_LightColor", 1,1,1);
shader_set_sampler( "u_equirect_spec", tex_equirect_spec );
shader_set_sampler( "u_brdfLUT", tex_brdfLUT );

/// this sampler shouldn't use mipmaps
var uni = shader_get_sampler_index( sha, "u_equirect_spec" ); 
gpu_set_tex_max_mip_ext( uni, 0 );
gpu_set_cullmode(cull_clockwise);
matrix_set(matrix_world, mat );
fbx_draw(fbx);
matrix_set(matrix_world, matrix_build_identity() );
shader_reset();

/// draw skybox
draw_skybox();