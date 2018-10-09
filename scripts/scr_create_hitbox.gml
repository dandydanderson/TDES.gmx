hitbox_ID = instance_create(x,y,obj_hitbox);
hitbox_ID.owner = id;

dir = argument0;

hitbox_ID.life = argument1;
hitbox_ID.xHit = argument2;
hitbox_ID.hitStun = argument3;

switch(dir){

case("up"):
    hitbox_ID.xOffset = -25;
    hitbox_ID.yOffset = -35
    hitbox_ID.image_xscale = 50;
    hitbox_ID.image_yscale = 35;
break

case("right"):
    hitbox_ID.xOffset = 16;
    hitbox_ID.yOffset = -16;
    hitbox_ID.image_xscale = 24;
    hitbox_ID.image_yscale = 45;
break

case("down"):
    hitbox_ID.xOffset = -25;
    hitbox_ID.yOffset = 10;
    hitbox_ID.image_xscale = 50;
    hitbox_ID.image_yscale = 35;
break

case("left"):
    hitbox_ID.xOffset = -40;
    hitbox_ID.yOffset = -16
    hitbox_ID.image_xscale = 24;
    hitbox_ID.image_yscale = 45;
break


}


return hitbox_ID;
