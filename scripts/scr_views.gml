
//call this on player create

view_visible[4] = false;

if(instance_exists(Testp1) and !instance_exists(Testp2) and !instance_exists(Testp3) and !instance_exists(Testp4)) {

view_visible[0] = true;
view_object[0] = Testp1;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 800;
view_hport[0] = 600;


}
else if (instance_exists(Testp1) and instance_exists(Testp2) and !instance_exists(Testp3) and !instance_exists(Testp4)) {

view_visible[0] = true; 
view_object[0] = Testp1; //the object it follows
view_wview[0] = 400; //this is the width that is shown with in your view. Basically how much room you get
view_xport[0] = 0; //where your view starts within the window. The port is about the actual window dimensions, not the amount of room you get.
view_yport[0] = 0; //where your view starts within the window, but y
view_wport[0] = 800; //width of your window
view_hport[0] = 1200;// height of your window

view_visible[1] = true;
view_object[1] = Testp2;
view_wview[1] = 400;
view_xport[1] = 800;
view_yport[1] = 0;
view_wport[1] = 800;
view_hport[1] = 1200;

}

else if (instance_exists(Testp1) and instance_exists(Testp2) and instance_exists(Testp3) and !instance_exists(Testp4)) {

view[0] = true;
view_object[0] = Testp1;
view[1] = true;
view_object[1] = Testp2;
view[2] = true;
view_object[2] = Testp3;


view_visible[0] = true;
view_object[0] = Testp1;
view_wview[0] = 400;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 800;
view_hport[0] = 1200;

view_visible[1] = true;
view_object[1] = Testp2;
view_wview[1] = 400;
view_hview[1] = 350;
view_xport[1] = 800;
view_yport[1] = 0;
view_wport[1] = 800;
view_hport[1] = 600;


view_visible[2] = true;
view_object[2] = Testp3;
view_wview[2] = 400;
view_hview[2] = 350;
view_xport[2] = 800;
view_yport[2] = 600;
view_wport[2] = 800;
view_hport[2] = 600;

}

else if (instance_exists(Testp1) and instance_exists(Testp2) and instance_exists(Testp3) and instance_exists(Testp4)) {

view_visible[0] = true;
view_object[0] = Testp1;
view_visible[1] = true;
view_object[1] = Testp2;
view_visible[2] = true;
view_object[2] = Testp3;
view_visible[3] = true;
view_object[3] = Testp4;


view[0] = true;
view_object[0] = Testp1;
view[1] = true;
view_object[1] = Testp2;
view[2] = true;
view_object[2] = Testp3;


view_visible[0] = true;
view_object[0] = Testp1;
view_wview[0] = 400;
view_hview[0] = 350
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 800;
view_hport[0] = 600;

view_visible[1] = true;
view_object[1] = Testp2;
view_wview[1] = 400;
view_hview[1] = 350;
view_xport[1] = 800;
view_yport[1] = 0;
view_wport[1] = 800;
view_hport[1] = 600;


view_visible[2] = true;
view_object[2] = Testp3;
view_wview[2] = 400;
view_hview[2] = 350;
view_xport[2] = 800;
view_yport[2] = 600;
view_wport[2] = 800;
view_hport[2] = 600;

view_visible[3] = true;
view_object[3] = Testp4;
view_wview[3] = 400;
view_hview[3] = 350;
view_xport[3] = 0;
view_yport[3] = 600;
view_wport[3] = 800;
view_hport[3] = 600;


}


