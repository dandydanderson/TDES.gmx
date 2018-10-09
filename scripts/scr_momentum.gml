p = argument0;
pdir = argument1;

while (p>0){
    switch (pdir){
    
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
    }}
    
    

