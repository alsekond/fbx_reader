//!#import Blank
// view settings
#macro ASSETS   "assets/"
application_surface_enable(true);
var w = 1280;
var h = 720;
view_visible = true;
view_enabled = true;
var cam = view_camera;
camera_set_view_size( cam, w, h );
window_set_size( w, h );
view_wport = w;
view_hport = h;
var px = (display_get_width() - w ) * .5;
var py = (display_get_height() - h ) * .5;
window_set_position( px, py );
window_set_fullscreen(false);
display_reset(0,1);

// make vertex format
vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_colour();
global.vertex_format = vertex_format_end();

var model_index = 0;
var names = [
    /*00*/"cyber_warrior.fbx",  /*01*/"multytool.fbx",  /*02*/"darth_talon.fbx",
    /*03*/"stormtrooper.fbx",   /*04*/"fight2.fbx",     /*05*/"breathing.fbx",
    /*06*/"death_stroke.fbx",   /*07*/"wolf.fbx",       /*08*/"companion_robot.fbx",
    /*09*/"raptoid_mascot.fbx", /*10*/"sups.fbx",       /*11*/"m1911.fbx",
    /*12*/"biped_robot.fbx",    /*13*/"gun_bot.fbx",    /*14*/"big_scary.fbx"];
var texes = [
    /*00*/"cw",             /*01*/"multytool",  /*02*/"darth_talon",
    /*03*/"stormtrooper",   /*04*/"def",        /*05*/"breathing",
    /*06*/"def",            /*07*/"def",        /*08*/"companion_robot",
    /*09*/"def",            /*10*/"sups",       /*11*/"m1911",
    /*12*/"def",            /*13*/"def",        /*14*/"big_scary"];
var model_name = names[model_index];

// BRDF LUT texture
tex_brdfLUT             = sprite_get_texture( spr_brdf_LUT, 0 );

// Cloud radiance texture
spr_radiance            = sprite_add( ASSETS + "clouds_radiance.jpg",0,false,true,0,0);
tex_equirect_spec       = sprite_get_texture( spr_radiance, 0 );

/// GPU settings
gpu_set_texfilter(true);
gpu_set_texrepeat(true);
gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);
gpu_set_blendenable(false);
gpu_set_tex_mip_filter( tf_anisotropic );

instance_create_layer( x, y, layer, obj_camera );

buff_cube   = model_load_vbf( ASSETS + "cube.vbf" );
env_spr     = sprite_add(ASSETS + "clouds.jpg",0,false,true,0,0);
env_tex     = sprite_get_texture( env_spr, 0 );

fbx = fbx_load(model_name);
fbx_animation_set(fbx,0);
fbx_material_assign(fbx,texes[model_index]);
if model_index == 0
{
    fbx_material_assign_by_index( fbx, 0, "rock");
}

//fbx_vbuff_save( fbx, "testmeshes.msh" );

ax = 0;
ay = 0;
az = 0;
mat = matrix_build_identity();