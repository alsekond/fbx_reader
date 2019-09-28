var sha = sha_env_equirect;
shader_set( sha );
var uni = shader_get_sampler_index( sha, "gm_BaseTexture" ); // this sampler shoudn't use mipmaps
gpu_set_tex_max_mip_ext( uni, 0 );
var s = -16384;
var mtx;
with obj_camera mtx = matrix_build( cpx, cpy, cpz, 0, 0, 0, s, s, s );
matrix_set( matrix_world, mtx );
gpu_set_cullmode(cull_noculling);
vertex_submit( buff_cube, pr_trianglelist, env_tex );
matrix_set( matrix_world, matrix_build_identity() );
shader_reset();
gpu_set_tex_max_mip_ext( uni, 16 );