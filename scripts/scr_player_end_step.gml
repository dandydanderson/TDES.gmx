//hurtbox
with(hurtbox){
    x = other.x + xOffset;
    y = other.y + yOffset;
}


//hitbox
if(hitbox != -1){
    with(hitbox){
        x = other.x + xOffset;
        y = other.y + yOffset;

        //check to see if the hurtbox is touching your hitbox        
        with(obj_hurtbox){
            if(place_meeting(x,y,other) && other.owner != owner){
                //ignore check
                //checking collision from the hitbox object
                with(other){
                    //check to see if your target is on the ignore list
                    //if it is on the ignore list, dont hit it again
                    for(i = 0; i < ds_list_size(ignoreList); i ++){
                        if(ignoreList[|i] = other.owner){
                            ignore = true;
                            break;
                        }
                    }

                    //if it is NOT on the ignore list, hit it, and add it to
                    //the ignore list
                    if(!ignore){
                        other.owner.hit = true;
                        other.owner.hitBy = id;
                         other.owner.damagePending = damage;
                        ds_list_add(ignoreList,other.owner);
                    }
                }
            }
        }
    }
}



//momentum

if (p <= 0){
      p = 0;
    }
    
    
//Cast Counter

castCounter = castCounter - 1;

if(castCounter == 0){scr_cast_fireball(your_target);}


// animation counter:




if (animationCounter > 0)
    {
    animationCounter = animationCounter - 1;
    }
    
if (animationCounter = 1)
    {
     animation = false;
     substate = tempState;
    }
    
    if (startUpCounter > 0)
{
startUpCounter = startUpCounter - 1;

} 

 /* -------------------------------------------------------------------------------------
 
 Directional key release controls
 
 ----------------------------------------------------------------------------------------*/
 
 if (!up_held and !down_held and !left_held and !right_held and !animation){
    
    switch(state){
        case "target":
            substate = "guard";
        break;
        
        case "notarget":
            substate = "idle";
        break;
        }
 
    }
 
 
 
 
 
 
 
 
  
   /* ------------------------------------------------------------------------------------------------------------------------
 
 Attack Codes
 
 --------------------------------------------------------------------------------------------------------------------------*/
if(state == "notarget"){
 
 if (r1_pressed and animation = false and energy > 0)
    {
    
    script_execute(scr_melee_light_attack, dir, state, substate, TargetDir, targetFace, guardDir);
    
    
     p = 8;
     scr_block_cancel();

    }
    }
if(state == "notarget"){
 
 if (r2_pressed and animation = false and energy > 0)
    {
    
    script_execute(scr_melee_heavy_attack, dir, state, substate, TargetDir, targetFace, guardDir);
    
    
     p = 8;
     scr_block_cancel();

    }
    }
if(state == "target"){

    if (r1_pressed and animation = false and energy > 0)
    {
     scr_block_cancel();
    script_execute(scr_melee_light_attack, dir, state, substate, TargetDir, targetFace, guardDir);
    
    if(distance_to_object(your_target) < 64) { p = 2 + sqrt(distance_to_object(your_target));}
    
    else{ p = 8;}

    }

}
if(state == "target"){

    if (r2_pressed and animation = false and energy > 0)
    {
     scr_block_cancel();
    script_execute(scr_melee_heavy_attack, dir, state, substate, TargetDir, targetFace, guardDir);
    
    if(distance_to_object(your_target) < 64) { p = 2 + sqrt(distance_to_object(your_target));}
    
    else{ p = 8;}

    }

}

//make sure the sprite is starting at the first sub image
    
if (last_sprite != sprite_index) {
   image_index = 0;
   last_sprite = sprite_index;
}
//catch this ensures if they target after they throw an attack that the substate sets to gaurd
if(substate == "idle" and state == "target") {substate = "guard";}

/*-----------------------------------------------------------------------------------------------------

Hit/Hurtbox management

----------------------------------------------------------------------------------------------------------*/


//-------
//Light Attack Hit Box Creation
//-------------



//no target


if (state == "notarget"){
if (substate == "attack" && image_index == 19)
    {
    hitbox = script_execute(scr_create_hitbox, dir, 10, 20, 60, agi);
    }

if(hitbox != -1){
    with(hitbox){
        x = other.x + xOffset;
        y = other.y + yOffset;
    }
}
}

//target

if (state == "target") {
if (substate == "attack" && image_index == 19)
    {
    hitbox = script_execute(scr_create_hitbox, targetFace, 10, 20, 60, agi);
    }

if(hitbox != -1){
    with(hitbox){
        x = other.x + xOffset;
        y = other.y + yOffset;
    }
}
}

//------------
//Heavy Attack Hit Box Creation
//-----------------


//no target


if (state == "notarget"){
if (substate == "heavyattack" && image_index == 19)
    {
    hitbox = script_execute(scr_create_hitbox, dir, 10, 20, 60, 2*str);
    }

if(hitbox != -1){
    with(hitbox){
        x = other.x + xOffset;
        y = other.y + yOffset;
    }
}
}

//target

if (state == "target") {
if (substate == "heavyattack" && image_index == 19)
    {
    hitbox = script_execute(scr_create_hitbox, targetFace, 10, 20, 60, 2*str);
    }

if(hitbox != -1){
    with(hitbox){
        x = other.x + xOffset;
        y = other.y + yOffset;
    }
}
}






//momentum
if(state == "notarget"){
if (p >0){
    switch (dir){
    
    case("up"):
        y = y - p;
        p = p - 1;
    break;
       case("down"):
        y = y + p;
        p = p - 1;
    break;
       case("left"):
        x = x - p;
        p = p - 1;
    break;
       case("right"):
        x = x + p;
        p = p - 1;
    break;
    }}}
    
    
if(state == "target"){
        if (p >0){
        direction = TargetDir;
        speed = p - 1;
        p=p-1;
    
    }
    }

if(p == 0) { speed = 0;}



//check for target

if(!instance_exists(your_target) and substate == "guard")
    {
    state = "notarget";
    substate = "idle";

    }
    
    
    
if (hit == true)
{
    if(substate == "parry")
    {
       hit = false; 
      audio_play_sound(parry, 6, false);
      animation = false;
      hitBy.owner.hitStun = 30;
    }
    
    else if(substate == "block"){
     hit = false; 
      audio_play_sound(block, 6, false);
       animation = false;
       hitBy.owner.hitStun = 15;
    }
    
    else if(substate == "dodge"){
    
        hit = false;
    
    }
    
    else if(heavyArmor > 0){
        
        hit = false;
        hp = hp - damagePending;
    
    
        }    
       
    
    else{
    
   
    hitStun = 10;
    hit = false;
    audio_play_sound(swordhit, 6, false);
    hp = hp - damagePending;
    }

}

//set health percentage

hppercent = (hp/hpmax) * 100;
energypercent = (energy/energymax) * 100;


//parry and block management

if (substate == "parry") {
    
    if(parryCounter > 0) {
         parryCounter = parryCounter - 1;
        }
        
    else { substate = "block"}
    
    }
    
if (substate == "block") {

     if(blockCounter > 0) {
         blockCounter = blockCounter - 1;
        }
        
    else { 
    
        switch(state) {
        
            case "notarget":
                substate = "idle";
                animation = false;
            break;   
            
            case "target":
                substate = "guard"
                animation = false;
            break; 
        }
        
        parryCounter = 10;
        blockCounter = 20;
    
    }


}

if(substate == "dodge"){
    
   if(dodgeCounter > 0) {dodgeCounter = dodgeCounter -1;
    
    switch (dir) {
    
        case "up":
        y = y - 3;
        break;
        
        case "down":
        y = y + 3;
        break;
        
        case "left":
        x = x - 3;
        break;
        
        case "right":
        x = x + 3;
        break;
    
    
        }}
    
    
    else {
        switch(state) {
        
        
                case "notarget":
                    substate = "idle";
                    animation = false;
                break;
                
                case "target":
                    substate = "guard";
                    animation = false;
                break;
            }
        
    }
}

//----------------
//Heavy Armor Control
//----------------------

if(heavyArmorDelay > 0){

    heavyArmorDelay = heavyArmorDelay - 1;
    
    if(heavyArmorDelay == 0){
    
            heavyArmor = 30;
    
        }

    }

if(heavyArmor > 0){

    heavyArmor = heavyArmor - 1;

    }

//hitstun

if (hitStun > 0) {

    hitStun = hitStun - 1;
    substate = "stun";
    
    if (hitStun == 0)
    {
        switch(state) {
        
        
                case "notarget":
                    substate = "idle";
                    animation = false;
                break;
                
                case "target":
                    substate = "guard";
                    animation = false;
                break;
            }
}
    
    
}


//-------------
//Grabbing
//-------------------

if(grabCounter > 0 and energy > 0){
    if(substate == "grab" and distance_to_object(your_target) < 60) {

    x = x + ceil((your_target.x - x)/16);
    y = y + ceil((your_target.y - y)/16);
 
    }
    
    grabCounter = grabCounter - 1;
    
    if(grabCounter == 0 and substate == "grab" and distance_to_object(your_target) < 20){
     your_target.target.hitStun = 30;
     substate = "grabbing";
     grabbingCounter = 30;
    
    }
    
    if(grabCounter == 0 and substate!= "grabbing"){
          substate = "guard";
          animation = false;
    }
    
 
}

//Break grab after a second

if(grabbingCounter > 0 and substate == "grabbing"){
    grabbingCounter = grabbingCounter - 1;
    if(grabbingCounter == 0){
        substate = "guard";
        animation = false;
    }
}

//Throw out of grab

if(substate == "grabbing"){
    if(left_held and square_held){
    your_target.target.thrownLeft = true;
    your_target.target.thrownCounter = 20;
    your_target.target.hitStun = 20;
    substate = "guard";
    animation = false;
    }
    
     if(right_held and square_held){
    your_target.target.thrownRight = true;
    your_target.target.thrownCounter = 20;
    your_target.target.hitStun = 20;
    substate = "guard";
    animation = false;
    }
    
     if(up_held and square_held){
    your_target.target.thrownUp = true;
    your_target.target.thrownCounter = 20;
    your_target.target.hitStun = 20;
    substate = "guard";
    animation = false;
    }
    
     if(down_held and square_held){
    your_target.target.thrownDown = true;
    your_target.target.thrownCounter = 20;
    your_target.target.hitStun = 20;
    substate = "guard";
    animation = false;
    }
  
    if(left_held and up_held and square_held){
    your_target.target.thrownLeft = true;
    your_target.target.thrownUp = true;
    your_target.target.thrownCounter = 15;
    your_target.target.hitStun = 15;
    substate = "guard";
    animation = false;
    }
    
     if(right_held and up_held and square_held){
    your_target.target.thrownRight = true;
    your_target.target.thrownUp = true;
    your_target.target.thrownCounter = 15;
    your_target.target.hitStun = 15;
    substate = "guard";
    animation = false;
    }
    
  if(left_held and down_held and square_held){
    your_target.target.thrownLeft = true;
    your_target.target.thrownDown = true;
    your_target.target.thrownCounter = 15;
    your_target.target.hitStun = 15;
    substate = "guard";
    animation = false;
    }
    
     if(right_held and down_held and square_held){
    your_target.target.thrownRight = true;
    your_target.target.thrownDown = true;
    your_target.target.thrownCounter = 15;
    your_target.target.hitStun = 15;
    substate = "guard";
    animation = false;
    }
    
    
}
  
//disallow this object to occupy the same place as other solid objects

if(!place_free(xprevious,y)){
    
    y = yprevious;
 
    } 
if(!place_free(x,yprevious)){
    
    x = xprevious;
     
    }
 

//this keeps sub image number while animating for changes in sprite directions while animating
if(substate == "heavyattack"){
    animatingImage = animatingImage + 1;
    image_index = animatingImage/2;
    }
    
if(substate == "attack"){
    animatingImage = animatingImage + 1;
    image_index = animatingImage;
    }
    
if(substate == "cast"){
    animatingImage = animatingImage + 1;
    image_index = animatingImage/3;
    }
    
if(animation == false) {
    animatingImage = 0;
    }
    
//pvp knockout timer

if (hp < 1) {
    hitStun = 180;
    hp = hpmax;
    
    }    
    
    
//Regeneration
hp_regen_counter = hp_regen_counter + 1;
energy_regen_counter = energy_regen_counter + 1;

if(hp_regen_counter == hpregen){
    hp = hp + 1;
    hp_regen_counter = 0;
    }
 if(hp > hpmax){hp = hpmax;}
 
if(energy_regen_counter == energyregen) {
    energy = energy + 1;
    energy_regen_counter = 0;
    }
 if(energy > energymax) {energy = energymax;}

 
 //----------------
//When Thrown
//---------------------
if(thrownCounter > 0){


if(thrownUp){
    y = y - 4;
}
if(thrownDown){
    y = y + 4;
}
if(thrownLeft){
    x = x - 4;
}
if(thrownRight){
    x = x + 4;
}
    thrownCounter = thrownCounter - 1;
    
    if(thrownCounter == 0) {
    
    if(thrownUp and !place_free(x, y - 1)){
     hitStun = hitStun + 60;
     audio_play_sound(wallSplat, 6, 0);
    }
    if(thrownDown and !place_free(x, y + 1)){
     hitStun = hitStun + 60;
     audio_play_sound(wallSplat, 6, 0);
    }
    if(thrownLeft and !place_free(x - 1, y)){
     hitStun = hitStun + 60;
     audio_play_sound(wallSplat, 6, 0);
    }
    if(thrownRight and !place_free(x + 1, y)){
     hitStun = hitStun + 60;
     audio_play_sound(wallSplat, 6, 0);
    }
    
    thrownUp = false;
    thrownDown = false;
    thrownRight = false;
    thrownLeft = false;
    }
    
}


//disallow this object to occupy the same place as other solid objects

//------------
// MAKE SURE THIS STAYS AT THE END
//-------------------

if(!place_free(xprevious,y)){
    
    y = yprevious;
 
    } 
if(!place_free(x,yprevious)){
    
    x = xprevious;
     
    }

