target = argument0;


energy = energy - floor(20/intel);

spell = instance_create(x, y, obj_fireball);

if (state == "notarget"){
    switch (dir){
        case "up":
        spell.sprite_index = spr_fireball_up;
        spell.direction = 90;
        spell.speed = intel + agi;
        spell.damage = intel;
        spell.size = intel + str;
        spell.owner = self;
        spell.ready = true;
        break;
        
        case "down":
        spell.sprite_index = spr_fireball_down;
        spell.direction = 270;
        spell.speed = intel + agi;
        spell.damage = intel;
        spell.size = intel + str;
        spell.owner = self;
        spell.ready = true;
        break;
        
        case "right":
        spell.sprite_index = spr_fireball_right;
        spell.direction = 0;
        spell.speed = intel + agi;
        spell.damage = intel;
        spell.size = intel + str;
        spell.owner = self;
        spell.ready = true;
        break;
        
        case "left":
        spell.sprite_index = spr_fireball_left;
          spell.direction = 180;
        spell.speed = intel + agi;
        spell.damage = intel;
        spell.size = intel + str;
        spell.owner = self;
         spell.ready = true;
        break;
    
    
    }
    
    
}

if (state == "target"){
    switch (targetFace){
        case "up":
        spell.sprite_index = spr_fireball_up;
        spell.direction = point_direction(x,y,target.x, target.y);
        spell.speed = intel + agi;
        spell.damage = intel;
        spell.size = intel + str;
         spell.ready = true;
        break;
        
        case "down":
        spell.sprite_index = spr_fireball_down;
           spell.direction = point_direction(x,y,target.x, target.y);
        spell.speed = intel + agi;
        spell.damage = intel;
        spell.size = intel + str;
        spell.owner = self;
         spell.ready = true;
        break;
        
        case "right":
        spell.sprite_index = spr_fireball_right;
           spell.direction = point_direction(x,y,target.x, target.y);
        spell.speed = intel + agi;
        spell.damage = intel;
        spell.size = intel + str;
        spell.owner = self;
         spell.ready = true;
        break;
        
        case "left":
        spell.sprite_index = spr_fireball_left;
          spell.direction = point_direction(x,y,target.x, target.y);
        spell.speed = intel + agi;
        spell.damage = intel;
        spell.size = intel + str;
        spell.owner = self;
         spell.ready = true;
        break;
    
    
    }
    
    
}
