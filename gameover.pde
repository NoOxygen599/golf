
void gameover() {
  //hole
  fill(golf);
  stroke(golf); 
  rect(0, 200, width/2 - 250, height); 
  rect(0, 550, width, height); 
  rect(width, 200, -(width/2 - 250), height);
  
  //stick
  fill(0);
  stroke(0);
  rect (width/2 - 60, 550, 120, -(height));
  
  //text
  textSize(100);
  fill(red); 
  text("Game Over", width/4 + 20, height - 50); 
  
 
  //ball
  fill(white);
  stroke(0);
  circle(width/2 + 100, height/2 + 50, 300);
  
   //start
  textSize(50);
  fill(0);
  text("replay", width/2 + 40, height/2 + 65); 
  
}
