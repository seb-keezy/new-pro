void drawBack(int x, int y){
  strokeWeight(0);
  fill(#0CAF2B);
  //top main
  rect(x,y,300,300);
  //right of top main
  rect(x+500,y+200,200,100);
  rect(x+900,y+200,200,100);
  
  //middle main
  rect(x,y+500,700,100);
  //right of middle main
  rect(x+900,y+500,200,100);
  
  //bottom main
  rect(x-210,y+800,300,300);
  //right of bottom main
  rect(x+300,y+800,400,300);
}