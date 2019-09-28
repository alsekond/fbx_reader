/// end demo on escape press
if keyboard_check_pressed( vk_escape ) then game_end();

fbx_animate(fbx,delta_time / 1000000);

var spd = 3, key;
key = keyboard_check(vk_pageup) - keyboard_check(vk_pagedown);
ax = key * spd;
key = keyboard_check(vk_up) - keyboard_check(vk_down);
ay = key * spd;
key = keyboard_check(vk_right) - keyboard_check(vk_left);
az = key * spd;

mat = matrix_multiply(matrix_build(0,0,0,0,0,az,1,1,1),mat);
mat = matrix_multiply(matrix_build(0,0,0,0,ax,0,1,1,1),mat);
mat = matrix_multiply(matrix_build(0,0,0,ay,0,0,1,1,1),mat);