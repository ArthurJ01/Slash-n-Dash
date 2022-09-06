///@desc Initialise Inputs/Variables/Mechanics

hsp_frac = 0; //takes away fractions in hsp	
vsp_frac = 0; //takes away fractions in vsp

state = PlayerStateFree;

//basic movement
acc = 2; //acceleration
dec = 1; //deceleration (grounded)
air_dec = .5; // deceleration (air, free state)
air_dec_dash = .1 //deceleration (air, post dash state)
walksp = 10; //max horizontal speed (10 default)
hsp = 0; //horizontal speed (initialisation)
vsp = 0; //vertical speed (initialisation)
grv = 1; //gravity

//jump
is_jumping = false //jump "state" check
jumpsp = 20; //jump speed (20 default)
downsp = 40; //down speed



//double jump
jumps = 0; //jumps available now
jumpsmax = 1; //max total jumps

//dash
dashsp = 20; //dash speed
jumpdashsp = 40 //jumping dash speed
dashdistance = 70 //mouse dash distance (70 default)
dashlength = 3; //dash duration
dashmaxlength = dashlength; //dash reset
dashCD = false //wether or not dash is on CD
post_dash = false //for air deceleration, check if dash just happened
vsp_post_dash_dec = .2 //deceleration of vsp post dash
//dashCDtimer = 2 * room_speed //dash Cd time
//dashCDtimerReset = dashCDtimer //resetter

dashattack = true;	//attack in dash
first_frame = true; //angle counter stuff

//grapple hook
grapple = true //grapple enabled or no

rope_start_multiplier = 0.5 //rope speed multiplier depending on starting movement speed
rope_acc = -0.194 //rope acceleration
rope_dec = .994 //rope deceleration
max_hook_range = 300
grapple_start = false








