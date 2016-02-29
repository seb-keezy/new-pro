void market(){
  backG=(#2296F2);
  strokeWeight(1);
  stroke(0);
  fill(255,150);
  rect(0,125,250,100);
  fill(#F0BC6F);
  rect(0,225,250,50);
  
  //glasses
  fill (#000000);
  ellipse (gX, gY, 20, 20);
  ellipse (gX-35, gY, 20,20);
  fill (#FFFFFF);
  ellipse (gX, gY, 15, 15);
  ellipse (gX-35, gY, 15, 15);
  fill (#000000);
  rect (gX-25, gY, 17, 1);
  
  
  //arcade
  fill(#00ff00);
  rect(350,50,70,110);
  fill(0);
  rect(360,60,50,50);
  muk(370,80,#aa00ee, #8800dd, .1, 1);
  drawBall(400,90,.125);
  fill(255);
  rect(400,115,3,10);
  ellipse(375,120,9,9);
  fill(#ff0000);
  ellipse(401,115,6,6);
  
  fill (#000000);
  ellipse (gX, gY, 20, 20);
  ellipse (gX-35, gY, 20,20);
  fill (#FFFFFF);
  ellipse (gX, gY, 15, 15);
  ellipse (gX-35, gY, 15, 15);
  fill (#000000);
  rect (gX-25, gY, 17, 1);
  //pastebin.com/yBckjDSX
}