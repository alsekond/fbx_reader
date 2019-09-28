
attribute vec3 in_Position;     // (x,y,z)
attribute vec3 in_Normal;       // (x,y,z)
attribute vec2 in_TextureCoord; // (u,v)
attribute vec4 in_Colour;       // xyz              // tangent
attribute vec4 in_Colour2;      // (b1,b2,b3,b4)    // blend bones
attribute vec4 in_Colour3;      // (w1,w3,w3,w4)    // blend weights

varying vec4 v_Colour;
varying vec2 v_UV;
varying vec3 v_Position;
varying mat3 v_TBN;

const int maxBones = 128;
uniform mat4 u_bones[maxBones];

void main()
{
    vec4 opos = vec4( in_Position, 1.0);
    vec4 onrm = vec4( in_Normal, 0.0);
    vec4 otan = vec4( in_Colour.xyz * 2.0 - 1.0, 0.0 );
    
    /// Blend bones
    ivec4 bone_id = ivec4(in_Colour2 * 255.0);
    mat4 anim = mat4(0.0);
    anim += u_bones[ bone_id.x ] * in_Colour3.x;
    anim += u_bones[ bone_id.y ] * in_Colour3.y;
    anim += u_bones[ bone_id.z ] * in_Colour3.z;
    anim += u_bones[ bone_id.w ] * in_Colour3.w;
    
    /// Animate
    opos = anim * opos;
    onrm = anim * onrm;
    otan = anim * otan;

    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * opos;
    v_Position = vec3( gm_Matrices[ MATRIX_WORLD ] * opos );
    v_UV = in_TextureCoord;
    v_Colour = in_Colour;
    mat3 mat = mat3( gm_Matrices[MATRIX_WORLD]);
    vec3 nrm = normalize( mat * vec3(onrm) );
    vec3 tgn = -normalize( mat * vec3(otan) );
    vec3 bit = normalize( cross( tgn, nrm ) );
    v_TBN = mat3( tgn, bit, nrm );
}
