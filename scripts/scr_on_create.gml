//-------------
// This script handles splitscreen/shared screen for multiplayer
//-----------------

scr_views();

//-------------
// Add yourself to the players list
//----------------------------

ds_list_add(global.player_units, self);


//--------
// Stats
//------------

alive = true;
str = 5;
intel = 5;
agi = 5;

hpmax = floor(str * 2) + floor(intel * 1.5) + floor(agi * 1.8);
energymax = floor(intel * 2) + floor(agi * 1.8) + floor(str * 1.5);

energy = energymax;
hp = hpmax;

hppercent = 100;
energypercent = 100;

hpregen = floor(5000/((str * 2) + (intel * 1.5) + (agi * 1.8)));
energyregen = floor(800/((str * 2) + (intel * 1.5) + (agi * 1.8)));

hp_regen_counter = 0;
energy_regen_counter = 0;

//-----------------
// speed, momentum, and state machine states
//--------------------------------

p = 0;
speed = 0;
dir = "up";
TargetDir = 0;
state = "notarget";
substate = "idle";
animation = false;
targetFace = "up";
guardDir = "middle";
tempState = "idle";

//-----------
// Counters for animations and states
//------------------

animationCounter = 0;
startUpCounter = 0;
parryCounter = 10;
blockCounter = 20;
dodgeCounter = 0;
grabCounter = 10;
grabbingCounter = 30;
castCounter = -1;
heavyArmor = 0;
heavyArmorDelay = 0;
last_sprite = 0;
damagePending = 0;
spell = 0;
thrownUp = false;
thrownDown = false;
thrownRight = false;
thrownLeft = false;
thrownCounter = 20;

//This keeps track of subimage while animating

animatingImage = 0;





//-----------
//Hitbox/Hurtbox constants and initializers
//------------------

hurtbox = scr_create_hurtbox(26,48,-13,-20);

hitbox = -1;

hit = false;
hitStun = 0;
hitBy = -1;






