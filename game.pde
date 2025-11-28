
void game() {
  
}


void drawing() {
  
   if (gBall.getX() < 0)                               {  gBall.setVelocity(0, 0);  gBall.setPosition(98, 250);}
  if (gBall.getX() > width || gBall.getY() > height)  {  gBall.setVelocity(0, 0);  gBall.setPosition(98, 250);} 
  world.step();                                                                                                                         //get box2D to calculate all the forces and new positions
  world.draw();                                                                                                                           //ask box2D to convert this world to processing screen coordinates and draw

  if (mouseDragOn) {
    float maxDist = 220;
    float dist = dist(mouseX, mouseY, gBall.getX(), gBall.getY());
    println(dist);
    if (dist >= maxDist) dist = maxDist;
    
    PVector v = new PVector(mouseX - gBall.getX(), mouseY - gBall.getY());
    v.setMag(dist);
    
    pushMatrix();
    strokeWeight((maxDist - dist)*0.016 + 2.5);
    line(gBall.getX() + v.x, gBall.getY() + v.y, gBall.getX(), gBall.getY());
    popMatrix();
  }
  
   if( gBall.getVelocityX() == 0 || gBall.getVelocityY() == 0) {
    gBall.setFillColor(white);
  } else {
    gBall.setFillColor(grey); 
  }
  
}
