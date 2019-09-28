// in this demo we using polar camera
cpx     = 0;    // camera position x
cpy     = 0;    // camera position y
cpz     = 0;    // camera position z
cvx     = 0;    // camera view x
cvy     = 0;    // camera view y
cvz     = 1;    // camera view z
cux     = 0;    // camera up x
cuy     = -1;   // camera up y
cuz     = 0;    // camera up z
pitch   = 20;   // camera pitch
yaw     = 0;    // camera yaw
rad     = 100;  // caera radius
cy      = 150;

var dw2 = display_get_width() / 2;
var dh2 = display_get_height() / 2;
display_mouse_set( dw2, dh2 );
cur_frame = 0;
