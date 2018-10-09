state = argument0;
substate = argument1;
dir = argument2;
targetLine = argument3;
targetDir = argument4;
animation = argument5;



//state = no target, substate = idle
if (!animation)
{
if(dir == "left" && state == "notarget" && substate == "idle")
    {
    sprite_index = spr_p1_lIdle;
    }
if(dir == "right" && state == "notarget" && substate == "idle")
    {
    sprite_index = spr_p1_rIdle;
    }
if(dir == "up" && state == "notarget" && substate == "idle")
    {
    sprite_index = spr_p1_bIdle;
    }    
if(dir == "down" && state == "notarget" && substate == "idle")
    {
    sprite_index = spr_p1_fIdle;
    }
}
    // state = notarget, substate = startup
if (!animation)
{
           
if(dir == "left" && state == "notarget" && substate == "startup")
    {
    sprite_index = spr_p1_lwalk;
    image_speed = .5;
    }
if(dir == "right" && state == "notarget" && substate == "startup")
    {
    sprite_index = spr_p1_rwalk;
     image_speed = .5;
    }
if(dir == "up" && state == "notarget" && substate == "startup")
    {
    sprite_index = spr_p1_bwalk;
     image_speed = .5;
    }    
if(dir == "down" && state == "notarget" && substate == "startup")
    {
    sprite_index = spr_p1_fwalk;
     image_speed = .5;
    }
}

    
// state = notarget, substate = walk
if(!animation)
{        
if(dir == "left" && state == "notarget" && substate == "walk")
    {
    sprite_index = spr_p1_lwalk;
    image_speed = 1;
    }
if(dir == "right" && state == "notarget" && substate == "walk")
    {
    sprite_index = spr_p1_rwalk;
    image_speed = 1;
    }
if(dir == "up" && state == "notarget" && substate == "walk")
    {
    sprite_index = spr_p1_bwalk;
    image_speed = 1;
    }    
if(dir == "down" && state == "notarget" && substate == "walk")
    {
    sprite_index = spr_p1_fwalk;
    image_speed = 1;
    }
}

//state = target, substate = guard
if (!animation)
{
if(state == "target" && substate == "guard" && targetDir == "right")
    {
    sprite_index = spr_p1_rIdle;
    }
if(state == "target" && substate == "guard" && targetDir = "up")
    {
    sprite_index = spr_p1_bIdle;
    }
if(state == "target" && substate == "guard" && targetDir = "left")
    {
    sprite_index = spr_p1_lIdle;
    }
if(state == "target" && substate == "guard" && targetDir = "down")
    {
    sprite_index = spr_p1_fIdle;
    }
}
    
    // targeted walk state = target, substate = strafe
 if(!animation)
 {       
if(state == "target" && substate == "strafe" && targetDir == "left")
    {
    sprite_index = spr_p1_lwalk;
    image_speed = .75;
    }
if(state == "target" && substate == "strafe" && targetDir == "right")
    {
    sprite_index = spr_p1_rwalk;
    image_speed = .75;
    }
if(state == "target" && substate == "strafe" && targetDir == "up")
    {
    sprite_index = spr_p1_bwalk;
    image_speed = .75;
    }    
if(state == "target" && substate == "strafe" && targetDir == "down")
    {
    sprite_index = spr_p1_fwalk;
    image_speed = .75;
    }
  }  
//attack animation sprite

/* state = argument0;
substate = argument1;
dir = argument2;
targetLine = argument3;
targetDir = argument4;
animation = argument5;
*/


//sprite control on attack with no target

if(state == "notarget"){
if(substate == "attack" && dir == "left")
    {
    sprite_index = spr_attack_left;
    image_speed = .25;
    }
if(substate == "attack" && dir == "right")
    {
    sprite_index = spr_attack_right;
    image_speed = .25;
    }
if(substate == "attack" && dir == "down")
    {
    sprite_index = spr_attack_down;
    image_speed = .25;
    }
if(substate == "attack" && dir == "up")
    {
    sprite_index = spr_attack_up;
    image_speed = .25;
    }
    }

    //sprite control on attack with a target
    
if(state == "target"){

if(substate == "attack" && targetFace == "left")
    {
    sprite_index = spr_attack_left;
    image_speed = .25;
    }
if(substate == "attack" && targetFace == "right")
    {
    sprite_index = spr_attack_right;
    image_speed = .25;
    }
if(substate == "attack" && targetFace == "down")
    {
    sprite_index = spr_attack_down;
    image_speed = .25;
    }
if(substate == "attack" && targetFace == "up")
    {
    sprite_index = spr_attack_up;
    image_speed = .25;
    }
    }














