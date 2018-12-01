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
//need to come back and reduce the size of this

//--------------------
    //Light Attack
//--------------------

if(state == "notarget"){
if(substate == "attack" && dir == "left")
    {
    sprite_index = spr_attack_left;
     image_speed = 1;//the animation is 10 frames, so normally this would take only a 1/3 of a secon. I want light attacks 
    //to create a hitbox at around 500 ms, so the entire animation will take ~660 ms, with the hitbox being created at the
    // 6th frame (about 550 ms).
    }
if(substate == "attack" && dir == "right")
    {
    sprite_index = spr_attack_right;
    image_speed = 1;
    }
if(substate == "attack" && dir == "down")
    {
    sprite_index = spr_attack_down;
    image_speed = 1;
    }
if(substate == "attack" && dir == "up")
    {
    sprite_index = spr_attack_up;
    image_speed = 1;
    }
//--------------
    //Heavy Attack
//-------------------
    
if(state == "notarget"){
if(substate == "heavyattack" && dir == "left")
    {
    sprite_index = spr_heavy_attack_left;
    image_speed = .5;
    }
if(substate == "heavyattack" && dir == "right")
    {
    sprite_index = spr_heavy_attack_right;
    image_speed = .5;
    }
if(substate == "heavyattack" && dir == "down")
    {
    sprite_index = spr_heavy_attack_down;
    image_speed = .5;
    }
if(substate == "heavyattack" && dir == "up")
    {
    sprite_index = spr_heavy_attack_up;
    image_speed = .5;
    }
}
    
    
    if(substate == "parry"){
    
        switch(dir){
            case "left":
                sprite_index = spr_parry_left;
            break;
                
            case "right":
                sprite_index = spr_parry_right;
            break;
            
            case "up":
                sprite_index = spr_parry_top;
            break;
            
            case "down":
                sprite_index = spr_parry_down;
            break;
        }
    
    }
    
    
      if(substate == "block"){
    
        switch(dir){
            case "left":
                sprite_index = spr_block_left;
            break;
                
            case "right":
                sprite_index = spr_block_right;
            break;
            
            case "up":
                sprite_index = spr_block_top;
            break;
            
            case "down":
                sprite_index = spr_block_down;
            break;
        }
    
    }
    
}

    //sprite control on attack with a target
    //------
    //Light Attack Target
    //----------------
    
if(state == "target"){

if(substate == "attack" && targetFace == "left")
    {
    sprite_index = spr_attack_left;
    image_index = animatingImage;
   image_speed = 1;
    }
if(substate == "attack" && targetFace == "right")
    {
    sprite_index = spr_attack_right;
      image_index = animatingImage;
   image_speed = 1;
    }
if(substate == "attack" && targetFace == "down")
    {
    if(sprite_index != spr_attack_down){
         sprite_index = spr_attack_down;
         image_index = animatingImage;
        }
    image_speed = 1;
    }
if(substate == "attack" && targetFace == "up")
    {
    sprite_index = spr_attack_up;
      image_index = animatingImage;
   image_speed = 1;
    }
 
 //--------------
    //Heavy Attack Target
//-------------------
    
if(state == "target"){
if(substate == "heavyattack" && targetFace == "left")
    {

         sprite_index = spr_heavy_attack_left;
       
    image_speed = .5;
    }
if(substate == "heavyattack" && targetFace == "right")
    {

         sprite_index = spr_heavy_attack_right;
      
    image_speed = .5;
    }
if(substate == "heavyattack" && targetFace == "down")
    {

         sprite_index = spr_heavy_attack_down;     
    image_speed = .5;
    }
if(substate == "heavyattack" && targetFace == "up")
    {
         sprite_index = spr_heavy_attack_up;
     image_speed = .5;
    }
}
       
       if(substate == "parry"){
    
        switch(targetFace){
            case "left":
                sprite_index = spr_parry_left;
            break;
                
            case "right":
                sprite_index = spr_parry_right;
            break;
            
            case "up":
                sprite_index = spr_parry_top;
            break;
            
            case "down":
                sprite_index = spr_parry_down;
            break;
        }
    
    }
    
    
      if(substate == "block"){
    
        switch(targetFace){
            case "left":
                sprite_index = spr_block_left;
            break;
                
            case "right":
                sprite_index = spr_block_right;
            break;
            
            case "up":
                sprite_index = spr_block_top;
            break;
            
            case "down":
                sprite_index = spr_block_down;
            break;
        }
    
    }
    
    
    }
    
    
//hit sprite control

if(state == "notarget" and substate == "stun"){

      switch(dir){
            case "left":
                sprite_index = spr_p1_hit_left;
            break;
                
            case "right":
                sprite_index = spr_p1_hit_right;
            break;
            
            case "up":
                sprite_index = spr_p1_hit_up;
            break;
            
            case "down":
                sprite_index = spr_p1_hit_down;
            break;
        }
    
    }

if(state == "target" and substate == "stun"){

      switch(targetFace){
            case "left":
                sprite_index = spr_p1_hit_left;
            break;
                
            case "right":
                sprite_index = spr_p1_hit_right;
            break;
            
            case "up":
                sprite_index = spr_p1_hit_up;
            break;
            
            case "down":
                sprite_index = spr_p1_hit_down;
            break;
        }
    
    }


// dodge sprite control 

if(state == "notarget" and substate == "dodge"){

      switch(dir){
            case "left":
                sprite_index = spr_dodge_left;
            break;
                
            case "right":
                sprite_index = spr_dodge_right;
            break;
            
            case "up":
                sprite_index = spr_dodge_up;
            break;
            
            case "down":
                sprite_index = spr_dodge_down;
            break;
        }
    
    }

if(state == "target" and substate == "dodge"){

      switch(targetFace){
            case "left":
                sprite_index = spr_dodge_left;
            break;
                
            case "right":
                sprite_index = spr_dodge_right;
            break;
            
            case "up":
                sprite_index = spr_dodge_up;
            break;
            
            case "down":
                sprite_index = spr_dodge_down;
            break;
        }
    
    }

//----------------------
//Grab
//-----------------------------

    if(substate == "grab"){
    
        switch(targetFace){
            case "left":
                sprite_index = spr_grab_left;
            break;
                
            case "right":
                sprite_index = spr_grab_right;
            break;
            
            case "up":
                sprite_index = spr_grab_up;
            break;
            
            case "down":
                sprite_index = spr_grab_down;
            break;
        }
    
    }
    
      if(substate == "grabbing"){
    
        switch(targetFace){
            case "left":
                sprite_index = spr_grab_left;
            break;
                
            case "right":
                sprite_index = spr_grab_right;
            break;
            
            case "up":
                sprite_index = spr_grab_up;
            break;
            
            case "down":
                sprite_index = spr_grab_down;
            break;
        }
    
    }








