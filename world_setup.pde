//===========================================================================================

void makeWorld() {
  Fisica.init(this);
  world = new FWorld(-100000, -1000000, 1000000, 1000000);
  world.setGravity(0, 981);
}

//===========================================================================================

void makeTopPlatform() {
  topPlatform = new FPoly();

  //plot the vertices of this platform
  topPlatform.vertex(0, 120);
  topPlatform.vertex(20, 180);
  topPlatform.vertex(60, 240);
  //starting
  topPlatform.vertex(90, 270);
  topPlatform.vertex(105, 270);
  topPlatform.vertex(110, 265);
  //first pit
  topPlatform.vertex(120, 300);
  topPlatform.vertex(160, 350);
  topPlatform.vertex(170, 550);
  topPlatform.vertex(270, 630);
  topPlatform.vertex(310, 620);
  //pillar
  topPlatform.vertex(340, 470);
  topPlatform.vertex(315, 280);
  topPlatform.vertex(345, 270);
  topPlatform.vertex(370, 275);
  topPlatform.vertex(365, 540);
  //second pit
  topPlatform.vertex(380, 670);
  topPlatform.vertex(460, 680);
  topPlatform.vertex(570, 630);
  topPlatform.vertex(600, 600);
  topPlatform.vertex(620, 500);
  //final flat
  topPlatform.vertex(670, 510);
  topPlatform.vertex(750, 510);
  //hole
  topPlatform.vertex(798, 530);
  topPlatform.vertex(800, 560);
  topPlatform.vertex(830, 560);
  topPlatform.vertex(832, 530);
  //past end
  topPlatform.vertex(880, 510);
  topPlatform.vertex(940, 500);
  topPlatform.vertex(1000, 530);
  //bottom
  topPlatform.vertex(width, height);
  topPlatform.vertex(width/2, height);
  topPlatform.vertex(0, height);

  // define properties
  topPlatform.setStatic(true);
  topPlatform.setFillColor(golf);
  topPlatform.setFriction(0.1);
  topPlatform.setGrabbable(false);
  //put it in the world
  world.add(topPlatform);
}

//===========================================================================================

void makeBottomPlatform() {
  bottomPlatform = new FPoly();

  //plot the vertices of this platform
  bottomPlatform.vertex(310, 360);
  bottomPlatform.vertex(300, 360);
  bottomPlatform.vertex(310, 560);
  bottomPlatform.vertex(320, 560);
  

  bottomPlatform.vertex(620, 560);
  bottomPlatform.vertex(630, 360);
  bottomPlatform.vertex(620, 360);
  bottomPlatform.vertex(610, 550);
  bottomPlatform.vertex(320, 550);
  
  

  // define properties
  bottomPlatform.setStatic(true);
  bottomPlatform.setFillColor(brown);
  bottomPlatform.setFriction(0);

  //put it in the world
  //world.add(bottomPlatform);
}


void makeCircle() {
  FCircle circle = new FCircle(50);
  circle.setPosition(random(100,width-100), -5);

  //set visuals
  circle.setStroke(0);
  circle.setStrokeWeight(2);
  circle.setFillColor(red);

  //set physical properties
  circle.setDensity(0.2);
  circle.setFriction(1);
  circle.setRestitution(1);

  //add to world
  world.add(circle);
}

//===========================================================================================

void makeBlob() {
  FBlob blob = new FBlob();

  //set visuals
  blob.setAsCircle(random(100,width-100), -5, 50);
  blob.setStroke(0);
  blob.setStrokeWeight(2);
  blob.setFillColor(yellow);

  //set physical properties
  blob.setDensity(0.2);
  blob.setFriction(1);
  blob.setRestitution(0.25);

  //add to the world
  world.add(blob);
}

//===========================================================================================

void makeBox() {
  FBox Box = new FBox(50, 50);
  Box.setPosition(random(100,width-100), -5);

  //set visuals
  Box.setStroke(0);
  Box.setStrokeWeight(2);
  Box.setFillColor(green);
 
  //set physical properties
  Box.setDensity(0.2);
  Box.setFriction(1);
  Box.setRestitution(1.1);
   
  world.add(Box);
}

//===========================================================================================

void makeGball() {
  gBall = new FCircle(20);
  gBall.setPosition(98, 240);

  //set visuals
 
  //set physical properties
  gBall.setDensity(0.8);
  gBall.setFriction(1);
  gBall.setStatic(set); 
  gBall.setRestitution(0.5 );
  gBall.setGrabbable(false);
  gBall.setVelocity(0, 0);
  world.add(gBall);

}
