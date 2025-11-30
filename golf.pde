import fisica.*;

//palette
color blue   = color(29, 178, 242);
color brown  = color(166, 120, 24);
color green  = color(74, 163, 57);
color red    = color(224, 80, 61);
color yellow = color(242, 215, 16);
color golf   = #84CB97;
color grey   = #EAE3E3;
color white  = #FFFCFC;

//assets
FPoly topPlatform; 
FPoly bottomPlatform;

//mode variables
final int INTRO    = 0;
final int GAME     = 1;
final int GAMEOVER = 2;
int mode = GAME;

//fisica
FWorld world;
FCircle gBall;

//variables
boolean set;

float vx;
float vy;

void setup() {
  //make window
  size(1000, 700);
  
  //load resources
  set = false;
 
  vx = 0;
  vy = 0;
 
  //initialise world
  makeWorld();
  makeGball();

  //add terrain to world
  makeTopPlatform();
  makeBottomPlatform();
  
}

//===========================================================================================

void draw() {
  //println("x: " + mouseX + " y: " + mouseY);
  background(blue);
  
  // makeCircle();
  // makeBlob();
  // makeBox(); 
 
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  }  
  
}
