/// using mouse wheelup and wheeldown to change camera radius
/// mouse axisx and axisy to change camera pitch and yaw
if mouse_wheel_up() rad /= 1.1;
if mouse_wheel_down() rad *= 1.1;
var mx  = display_mouse_get_x();
var my  = display_mouse_get_y();
var dw2 = display_get_width() / 2;
var dh2 = display_get_height() / 2;
var mdx = mx - dw2;
var mdy = my - dh2;
display_mouse_set( dw2, dh2 );
if mouse_check_button( mb_middle )
{
    cy -= mdy * .5;
}
if mouse_check_button( mb_left )
{  
    yaw     -= mdx * .5;
    pitch   -= mdy * .5;
    pitch   = clamp( pitch, -89, 89 );
}

var px, py, pz;
px = 0;
py = 0;
pz = 0;

/// calculate polar coordinates for camera
var rx,ry,rz;
py += cy;
rx = -rad * dsin(yaw) * dcos(-pitch);
ry = - rad * dsin(-pitch);
rz = rad * dcos(yaw) * dcos(-pitch);
cpx = px + rx;
cpy = py + ry;
cpz = pz + rz;
cvx = px;
cvy = py;
cvz = pz;
cux = 0;
cuy = 1;
cuz = 0;

