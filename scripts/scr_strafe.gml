

dir = argument0;
walk_dir = argument1;
px = argument2;
py = argument3;
animation = argument4;



//add walking start up animation here later



//left motion
if(animation == false)
{
if(walk_dir = "left")
    {
    if(place_free(px - 15, y))
        {
        x = x - 2;
        dir = "left";
        }
    }
 //right motion

if(walk_dir = "right")
    {
    if(place_free(px + 15, y))
        {
        x = x + 2;
        dir = "right";
        }
    }  
//up motion

if(walk_dir = "up")
    {
    if(place_free(x, py - 15))
        {
        y = y - 2;
        dir = "up";
        }
    }
    

 
    //left motion

if(walk_dir = "down")
    {
    if(place_free(x, py + 15))
        {
        y = y + 2;
        dir = "down";
        }
    }
 }  
   
//at key release, return state to idle
