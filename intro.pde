void intro() {
  fill(golf);
   arc(50, 700, 1300, 600, golf, HALF_PI);
   arc(1400, 800, 3000, 870, golf, HALF_PI);
   
   fill(0); 
   ellipse(900, 600, 100, 40);
   
   pushMatrix(); 
  fill(0); 
  strokeWeight(1); 
  rect(915, 350, 5, 220);
  fill(red); 
  triangle(910, 350, 865, 380, 910, 410); 
  popMatrix();
  
  pushMatrix(); 
  fill(white);
  strokeWeight(2); 
  stroke(0);
//  textFont( loadFont("FelixTitlingMT-48.vlw") ); 
  textSize(200); 
  text("GOLF", width/3, height/3);
  popMatrix(); 
  
}
