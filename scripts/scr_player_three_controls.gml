var h2axis = gamepad_axis_value(p3_controller_num, gp_axislh);
var v2axis = gamepad_axis_value(p3_controller_num, gp_axislv);

gamepad_set_axis_deadzone(p3_controller_num, .5);

if(h2axis > 0){right_held = true};
else{right_held = false}

if(h2axis < 0){left_held = true};
else{left_held = false}

if(v2axis < 0){up_held = true};
else{up_held = false}

if(v2axis > 0){down_held = true};
else{down_held = false}

//temp directional controls so I don't look like a nerd at college whipping out a controller

if(keyboard_check(ord("K"))){right_held = true};
else{right_held = false}

if(keyboard_check(ord("H"))){left_held = true};
else{left_held = false}

if(keyboard_check(ord("U"))){up_held = true};
else{up_held = false}

if(keyboard_check(ord("J"))){down_held = true};
else{down_held = false}



square_held =  gamepad_button_check(p3_controller_num, gp_face1); 
square_pressed =  gamepad_button_check_pressed(p3_controller_num, gp_face1);
square_released =  gamepad_button_check_released(p3_controller_num, gp_face1);


x_held =  gamepad_button_check(p3_controller_num, gp_face2); 
x_pressed =  gamepad_button_check_pressed(p3_controller_num, gp_face2);
x_released =  gamepad_button_check_released(p3_controller_num, gp_face2);


circle_held =  gamepad_button_check(p3_controller_num, gp_face3); 
circle_pressed =  gamepad_button_check_pressed(p3_controller_num, gp_face3);
circle_released =  gamepad_button_check_released(p3_controller_num, gp_face3);


triangle_held =  gamepad_button_check(p3_controller_num, gp_face4); 
triangle_pressed =  gamepad_button_check_pressed(p3_controller_num, gp_face4);
triangle_released =  gamepad_button_check_released(p3_controller_num, gp_face4);


r1_held =  gamepad_button_check(p3_controller_num, gp_shoulderr); 
r1_pressed =  gamepad_button_check_pressed(p3_controller_num, gp_shoulderr);
r1_released =  gamepad_button_check_released(p3_controller_num, gp_shoulderr);


r2_held =  gamepad_button_check(p3_controller_num, gp_shoulderrb); 
r2_pressed =  gamepad_button_check_pressed(p3_controller_num, gp_shoulderrb);
r2_released =  gamepad_button_check_released(p3_controller_num, gp_shoulderrb);


l1_held =  gamepad_button_check(p3_controller_num, gp_shoulderl); 
l1_pressed =  gamepad_button_check_pressed(p3_controller_num, gp_shoulderl);
l1_released =  gamepad_button_check_released(p3_controller_num, gp_shoulderl);


l2_held =  gamepad_button_check(p3_controller_num, gp_shoulderlb); 
l2_pressed =  gamepad_button_check_pressed(p3_controller_num, gp_shoulderlb);
l2_released =  gamepad_button_check_released(p3_controller_num, gp_shoulderlb);

/*
up_held =  gamepad_button_check(p3_controller_num, gp_padl); 
up_pressed =  gamepad_button_check_pressed(p3_controller_num, gp_padl);
up_released =  gamepad_button_check_released(p3_controller_num, gp_padl);


right_held =  gamepad_button_check(p3_controller_num, gp_padr); 
right_pressed =  gamepad_button_check_pressed(p3_controller_num, gp_padr);
right_released =  gamepad_button_check_released(p3_controller_num, gp_padr);


left_held =  gamepad_button_check(p3_controller_num, gp_stickr); 
left_pressed =  gamepad_button_check_pressed(p3_controller_num, gp_stickr);
left_released =  gamepad_button_check_released(p3_controller_num, gp_stickr);


down_held =  gamepad_button_check(p3_controller_num, gp_start); 
down_pressed =  gamepad_button_check_pressed(p3_controller_num, gp_start);
down_released =  gamepad_button_check_released(p3_controller_num, gp_start);
*/

ps_held =  gamepad_button_check(p3_controller_num, gp_padu); 
ps_pressed =  gamepad_button_check_pressed(p3_controller_num, gp_padu);
ps_released =  gamepad_button_check_released(p3_controller_num, gp_padu);


tpad_held =  gamepad_button_check(p3_controller_num, gp_padd); 
tpad_pressed =  gamepad_button_check_pressed(p3_controller_num, gp_padd);
tpad_released =  gamepad_button_check_released(p3_controller_num, gp_padd);


select_held =  gamepad_button_check(p3_controller_num, gp_select); 
select_pressed =  gamepad_button_check_pressed(p3_controller_num, gp_select);
select_released =  gamepad_button_check_released(p3_controller_num, gp_select);


start_held =  gamepad_button_check(p3_controller_num, gp_start); 
start_pressed =  gamepad_button_check_pressed(p3_controller_num, gp_start);
start_released =  gamepad_button_check_released(p3_controller_num, gp_start);



