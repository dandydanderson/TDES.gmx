dir = argument0;
state = argument1;
substate = argument2;
targetAngle = argument3;
targetFace = argument4;
guardDir = argument5;
/*------------------------------------------

FREE FORM ATTACKS

-------------------------------------------*/
tempState = substate;
if (state == "notarget" and dir = "left")
    {

    //set self to animation to true
    animation = "true";
    
    //set timer to return animation to false
    animationCounter = 30;
    
    //substate control for these conditions
    substate = "attack";
    
    //return state to idle
    
    }
    
if (state == "notarget" and dir = "right")
    {
   
    
      //set self to animation to true
    animation = "true";
    
    //set timer to return animation to false
    animationCounter = 30;
    
    //substate control for 
    
    substate = "attack";
    }
    
if (state == "notarget" and dir = "up")
    {
    
    
      //set self to animation to true
    animation = "true";
    
    //set timer to return animation to false
    animationCounter = 30;
    
    //substate control for 
    substate = "attack";
    }
    
if (state == "notarget" and dir = "down")
    {

    
      //set self to animation to true
    animation = "true";
    
    //set timer to return animation to false
    animationCounter = 30;
    
    //substate control for 
    substate = "attack";
    }
    
    
/*-----------------------------------

TARGET ATTACKS

-------------------------------------*/
        
if (state == "target")
    {

    //set self to animation to true
    animation = "true";
    
    //set timer to return animation to false
    animationCounter = 30;
    
    //substate control for these conditions
    substate = "attack";
    
    //return state to idle
    
    }




