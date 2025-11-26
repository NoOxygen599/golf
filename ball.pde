
boolean mouseDragOn = false;


void mousePressed() {
  float bRadius = gBall.getSize()/2;
  
  // if click is inside ball
  if (gBall.isSleeping() && dist(mouseX, mouseY, gBall.getX(), gBall.getY()) <= bRadius) {
    mouseDragOn = true;
    pushMatrix();
    strokeWeight(3);
    line(mouseX, mouseY, gBall.getX(), gBall.getY());
    popMatrix();
  
  }
     
    
  println(gBall.getSize());
//  FLine l = new FLine(gBall.getX(), gBall.getY(), gBall.getX(), gBall.getY()+gBall.getSize());
//  world.add(l);
}

void mouseReleased()  {
  
  if (mouseDragOn) {
    float xVel = (mouseX - gBall.getX()) * -6;
    float yVel = (mouseY - gBall.getY()) * -6;
    gBall.setVelocity(xVel, yVel);
    mouseDragOn = false;
  }
  
}

void mouseDragged() {
  
}
