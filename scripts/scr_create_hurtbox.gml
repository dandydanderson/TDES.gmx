hurtbox_ID = instance_create(x,y,obj_hurtbox);
hurtbox_ID.owner = id;
hurtbox_ID.image_xscale = argument0;
hurtbox_ID.image_yscale = argument1;
hurtbox_ID.xOffset = argument2;
hurtbox_ID.yOffset = argument3;

return hurtbox_ID;
