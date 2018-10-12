//argument0 is upper pause threshold, argument1 controls how far they wonder (sort of)
pause = argument0;
distance = argument1;



if (speed = 0 and wait <1)

{


wait = irandom_range(30, pause);

direction = irandom_range(1,359);
speed = distance;

}

if (wait > 0) {

    wait = wait - 1;
    
    }
