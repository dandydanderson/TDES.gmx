/*
//different player states

States regardless of target switch: (Things you can do whether you’re targeting a unit or not)
Interact
dead
Quick item(animations)

Untarget states: (Things you can only do when you aren’t targeting a unit)
Idle: not moving and no inputs. Should have some idle animations(later)
Walking: basic movement, fairly quick, no stamina use
Run/Sprint: faster than walking, uses stamina(less/none when no baddies are around)
Sleeping: laying animation
sneaking
dialogue/shop
aoe and attack in front of you

Target states: (Things you can only do when you are targeting a unit)
Guard directions, top, middle, bottom
walk
sprint
attack
Dash
Cast
Shoot/throw



*/

depth = -y;

script_execute(script_sprite_control, state, substate, dir, TargetDir, targetFace, animation);

/* -------------------------------------------------------------------------------------
 
 Directional key press controls (on press)
 
 ----------------------------------------------------------------------------------------*/
 
 //temporary startup animation for moving from idle.
 
 if (left_held && substate == "idle" && state == "notarget" and !animation)
 {
    substate = "startup";
      startUpCounter = 9;
    
 }
 
  if (right_held && substate == "idle" && state == "notarget" and !animation)
 {
    substate = "startup";
      startUpCounter = 9;
 }
 
  if (up_held && substate == "idle" && state == "notarget" and !animation)
 {
    substate = "startup";
    startUpCounter = 9;
 }
 
  if (down_held && substate == "idle" && state == "notarget" and !animation)
 {
    substate = "startup";
    startUpCounter = 9;
 }
 


 /* -------------------------------------------------------------------------------------
 
 Directional key press controls (hold)
 
 ----------------------------------------------------------------------------------------*/


if (left_held) //need to have if statement for when key is released to return to "idle" substate for both target and no target modes.
 {
 
 //switch statement for each possible main state, that is targeting or not targeting. There should be some overlapping actions that can be done in either.
  switch(state)
    {
    
    //notarget case
    
      case("notarget"):
        {
        
        //switch on substate for "notarget"
        
        switch(substate)
            {
             case "idle":
                
                //idle script. If you're pressing left and you're in the idle state, this script should be a start up animation. 
                 script_execute(scr_start_movement, dir, "left", x, y, animation);
                 break;
                 
            case "startup":
                
                script_execute(scr_start_movement, dir, "left", x, y, animation);
                break;
                
            case "walk":
                
                //walking script. check if dir is opposite key press. If so, stopping animation before began walking in dir. Otherwise, walk in dir immediately.
                 script_execute(scr_walk, dir, "left", x, y, animation);
                break;
                
            case "sprint":
                {
                //sprint script. Same as walking, but with more stopping animation, but maintain sprint(sprint will be toggle methinks)
                }
            case "sleep":
                {
                //sleep script. Wake up and begin walking.
                }
            case "sneak":
                {
                //sneak script. sneak in direction pressed
                }
            case "dialogue":
                {
                //dialouge script. movement keys should do nothing
                }
            case "menu":
                {
                //menu script. Navigate menus
                }
            case "hitstun":
                {
                //hitstun script. don't move left
                }
            }
        }
        
        
    //target case
      case("target"):
        {
        //switch on substate for "target"
            switch(substate)
                {
                
                  case "guard":
                    {
                     substate = "strafe";
                    }
                  case "strafe":
                    {
                     script_execute(scr_strafe, dir, "left", x, y, animation); 
                    }
                  case "sprint":
                    {
                    //sprint script
                    }
                  case "attack":
                    {
                   //attack script
                    }
                  case "dash":
                     {
                   //dash script
                    }
                  case "cast":
                    {
                        //cast script
                    }
                  case "shoot":
                    {
                    //shoot script
                    }
                }
        
        }   
        
        
    }
  }
    
if (up_held) //need to have if statement for when key is released to return to "idle" substate for both target and no target modes.
 {
 
 //switch statement for each possible main state, that is targeting or not targeting. There should be some overlapping actions that can be done in either.
  switch(state)
    {
    
    //notarget case
    
      case("notarget"):
        {
        
        //switch on substate for "notarget"
        
        switch(substate)
            {
             case "idle":
                {
                //idle script. If you're pressing left and you're in the idle state, this script should be a start up animation. 
                  script_execute(scr_start_movement, dir, "up", x, y, animation);
                  break;
                }
              case "startup":
                {
                script_execute(scr_start_movement, dir, "up", x, y, animation);
                break;
                }
                
            case "walk":
                {
                //walking script. check if dir is opposite key press. If so, stopping animation before began walking in dir. Otherwise, walk in dir immediately.
                 script_execute(scr_walk, dir, "up", x, y, animation);
                 break;
                }
            case "sprint":
                {
                //sprint script. Same as walking, but with more stopping animation, but maintain sprint(sprint will be toggle methinks)
                }
            case "sleep":
                {
                //sleep script. Wake up and begin walking.
                }
            case "sneak":
                {
                //sneak script. sneak in direction pressed
                }
            case "dialogue":
                {
                //dialouge script. movement keys should do nothing
                }
            case "menu":
                {
                //menu script. Navigate menus
                }
            case "hitstun":
                {
                //hitstun script. don't move left
                }
            }
        }
        
        
    //target case
      case("target"):
        {
        //switch on substate for "target"
            switch(substate)
                {
                
                  case "guard":
                    {
                   substate = "strafe";
                    }
                  case "strafe":
                    {
                      script_execute(scr_strafe, dir, "up", x, y, animation);
                    }
                  case "sprint":
                    {
                    //sprint script
                    }
                  case "attack":
                    {
                   //attack script
                    }
                  case "dash":
                     {
                   //dash script
                    }
                  case "cast":
                    {
                        //cast script
                    }
                  case "shoot":
                    {
                    //shoot script
                    }
                }
        
        }   
        
        
    }
 }  
    
  if (right_held) //need to have if statement for when key is released to return to "idle" substate for both target and no target modes.
 {
 
 //switch statement for each possible main state, that is targeting or not targeting. There should be some overlapping actions that can be done in either.
  switch(state)
    {
    
    //notarget case
    
      case("notarget"):
        {
        
        //switch on substate for "notarget"
        
        switch(substate)
            {
             case "idle":
                {
                //idle script. If you're pressing left and you're in the idle state, this script should be a start up animation. 
                  script_execute(scr_start_movement, dir, "right", x, y, animation);
                  break;
                }
             case "startup":
                {
                script_execute(scr_start_movement, dir, "right", x, y, animation);
                break;
                }
            case "walk":
                {
                //walking script. check if dir is opposite key press. If so, stopping animation before began walking in dir. Otherwise, walk in dir immediately.
                 script_execute(scr_walk, dir, "right", x, y, animation);
                 break;
                }
            case "sprint":
                {
                //sprint script. Same as walking, but with more stopping animation, but maintain sprint(sprint will be toggle methinks)
                }
            case "sleep":
                {
                //sleep script. Wake up and begin walking.
                }
            case "sneak":
                {
                //sneak script. sneak in direction pressed
                }
            case "dialogue":
                {
                //dialouge script. movement keys should do nothing
                }
            case "menu":
                {
                //menu script. Navigate menus
                }
            case "hitstun":
                {
                //hitstun script. don't move left
                }
            }
        }
        
        
    //target case
      case("target"):
        {
        //switch on substate for "target"
            switch(substate)
                {
                
                  case "guard":
                    {
                     substate = "strafe";
                    }
                  case "strafe":
                    {
                      script_execute(scr_strafe, dir, "right", x, y, animation); 
                    }
                  case "sprint":
                    {
                    //sprint script
                    }
                  case "attack":
                    {
                   //attack script
                    }
                  case "dash":
                     {
                   //dash script
                    }
                  case "cast":
                    {
                        //cast script
                    }
                  case "shoot":
                    {
                    //shoot script
                    }
                }
        
        }   
        
        
    }
  }  
 
if (down_held) //need to have if statement for when key is released to return to "idle" substate for both target and no target modes.
 {
 
 //switch statement for each possible main state, that is targeting or not targeting. There should be some overlapping actions that can be done in either.
  switch(state)
    {
    
    //notarget case
    
      case("notarget"):
        {
        
        //switch on substate for "notarget"
        
        switch(substate)
            {
             case "idle":
                {
                //idle script. If you're pressing left and you're in the idle state, this script should be a start up animation. 
                 script_execute(scr_start_movement, dir, "down", x, y, animation);
                 break;
                }              
             case "startup":
                {
                script_execute(scr_start_movement, dir, "down", x, y, animation);
                break;
                }
            case "walk":
                {
                //walking script. check if dir is opposite key press. If so, stopping animation before began walking in dir. Otherwise, walk in dir immediately.
                 script_execute(scr_walk, dir, "down", x, y, animation);
                 break;
                }
            case "sprint":
                {
                //sprint script. Same as walking, but with more stopping animation, but maintain sprint(sprint will be toggle methinks)
                }
            case "sleep":
                {
                //sleep script. Wake up and begin walking.
                }
            case "sneak":
                {
                //sneak script. sneak in direction pressed
                }
            case "dialogue":
                {
                //dialouge script. movement keys should do nothing
                }
            case "menu":
                {
                //menu script. Navigate menus
                }
            case "hitstun":
                {
                //hitstun script. don't move left
                }
            }
        }
        
        
    //target case
      case("target"):
        {
        //switch on substate for "target"
            switch(substate)
                {
                
                  case "guard":
                    {
                    substate = "strafe"
                    }
                  case "strafe":
                    {
                     script_execute(scr_strafe, dir, "down", x, y, animation);
                    }
                  case "sprint":
                    {
                    //sprint script
                    }
                  case "attack":
                    {
                   //attack script
                    }
                  case "dash":
                     {
                   //dash script
                    }
                  case "cast":
                    {
                        //cast script
                    }
                  case "shoot":
                    {
                    //shoot script
                    }
                }
        
        }   
        
        
    }
  }

 
 
if (triangle_pressed && !animation and energy > 0){
 
 //switch statement for each possible main state, that is targeting or not targeting. There should be some overlapping actions that can be done in either.
  switch(state)
    {
    
    //notarget case
    
      case("notarget"):
        {
      
        scr_parry();
        }
        
        
    //target case
      case("target"):
        {
       
        scr_parry();
        
        }   
        
        
    }
  }
  
  

//dodge 

//if(keyboard_check_pressed(ord("S")) && !animation){

if(circle_pressed and !animation and energy > 0) {
scr_dodge();
}

//grab

if(square_pressed && !animation && state == "target" and !l1_held) {
        scr_grab();
    }


    
    
//Casting

if(l1_held and !animation and square_pressed){
scr_cast();
}


//This creates your players specific target
 
if (l2_pressed && !instance_exists(your_target) && ds_list_size(global.p1_enemies)!= 0)
    {
    instance_create(0,0,your_target);
    substate = "guard";
    }

//Tracks where your target is to return a facing direction

if (instance_exists(your_target))
    {
    TargetDir = point_direction(x, y, your_target.x, your_target.y);
    }


    if (TargetDir > 315 or TargetDir <= 45)
        {
        targetFace = "right";
        }
        
    if (TargetDir > 45 and TargetDir <= 135)
        {
        targetFace = "up";
        }
        
    if (TargetDir > 135 and TargetDir <= 225)
        {
        targetFace = "left";
        }
        
    if (TargetDir > 225 and TargetDir <= 315)
        {
        targetFace = "down";
        }
