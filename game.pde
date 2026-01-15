
void game() {
  
}


void drawing() {
  
  if (gBall.getX() < 0 || gBall.getX() > width || gBall.getY() > height){
    world.remove(gBall);
    makeGball();
  } 
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
 
 if (gBall.getX() > 800 && gBall.getY() > 530) {
    if (gBall.getX() < 830 && gBall.getY() < 560) {
      if( gBall.getVelocityX() == 0 || gBall.getVelocityY() == 0) {
      mode = GAMEOVER; 
      gBall.setPosition(98, 240);
      }
    }
  }
     
  pushMatrix(); 
  fill(0); 
  strokeWeight(1); 
  rect(815, 450, 2, 110);
  fill(red); 
  triangle(810, 450, 785, 465, 810, 480); 
  popMatrix(); 
}
