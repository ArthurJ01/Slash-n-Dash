///@desc Initialise Inputs/Variables/Mechanics

state = PlayerStateFree;

//basic movement
acc = 2; //acceleration
dec = 1; //deceleration
walksp = 10; //max horizontal speed
hsp = 0; //horizontal speed
vsp = 0; //vertical speed
grv = 1; //gravity

//jump
is_jumping = false //jump "state" check
jumpsp = 20; //jump speed
downsp = 40; //down speed


//double jump
jumps = 0; //jumps available now
jumpsmax = 2; //max total jumps

//dash
dashsp = 20; //dash speed
dashlength = 3; //dash duration
dashmaxlength = dashlength //dash reset

//grapple hook
grapple = true //grapple enabled or no

rope_start_multiplier = 0.5 //rope speed multiplier depending on starting movement speed
rope_acc = -0.194 //rope acceleration
rope_dec = 0.994 //rope deceleration
max_hook_range = 300
grapple_start = false







