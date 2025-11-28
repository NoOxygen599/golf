
boolean mouseDragOn = false;


void mousePressed() {
  float bRadius = gBall.getSize()/2;
  
  // if click is inside ball
  if (Math.abs(gBall.getVelocityX())<2.3 && Math.abs(gBall.getVelocityY())<2.3 && dist(mouseX, mouseY, gBall.getX(), gBall.getY()) <= bRadius) {
    mouseDragOn = true;
  
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
