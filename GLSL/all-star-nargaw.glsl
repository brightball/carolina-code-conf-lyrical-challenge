//Well, the years start comin' and they don't stop comin'
//Fed to the rules and I hit the ground runnin'
//Didn't make sense not to live for fun
//Your brain gets smart, but your head gets dumb

float years = mod(u_time, 100.); // Well, the years start comin' and they don't stop comin'
vec2 rules = vec2(me, ground.y * -9.81); //Fed to the rules and I hit the ground runnin'

if(!fun){
  bool life = false;
} //Didn't make sense not to live for fun

float brainIQ = smoothstep(0.0, 1.0, u_time); // Your brain gets smart
float headWisdom = 1.0 - brainIQ;             // but your head gets dumb




