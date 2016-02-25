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


void drawCoin(int x, int y) {
  stroke(0);
  strokeWeight(1);
  fill(#ffff00);
  ellipse(x, y, 20, 20);
  fill(#FACA0A);
  stroke(#FACA0A);
  ellipse(x, y, 10, 10);
}


void pokemart(int x, int y,int s){
  noStroke();
  fill (#2296F2);
  rect (x, y, 100*s,100*s);
  //symbol
  fill (#0000ff);
  ellipse (x+50*s, y+30*s, 30*s,s* 30);
  fill (#ffffff);
  ellipse (x+50*s, y+30*s,s* 15,s* 15);
  rect (x+35*s, y+28*s, s*30, s*5);
  //text for Mart
  textSize(14*s);
  text("MART", x+10*s, y+75*s);
  fill (#0000ff);
  rect (x+60*s, y+58*s, s*25, s*40);
}


void drawBall(int x, int y, float s) {
  fill(#dddddd);
    noStroke();
    arc(x, y, 80*s, 80*s, 0, PI, OPEN);
    fill(#ff0000);
    arc(x, y, 80*s, 80*s, PI, 2*PI, OPEN);
    fill(#000000);
    rect(x-40*s, y-5*s, 80*s, 10*s);
    ellipse(x, y, 20*s, 20*s);
    fill(#dddddd);
    ellipse(x, y, 10*s, 10*s);
}


int gX = 100;
int gY = 100;
int hX = 300;
int hY = 300;
 
void glasses(){
  fill (#000000);
  ellipse (gX, gY, 20, 20);
  ellipse (gX-35, gY, 20,20);
  fill (#FFFFFF);
  ellipse (gX, gY, 15, 15);
  ellipse (gX-35, gY, 15, 15);
  fill (#000000);
  rect (gX-25, gY, 17, 1);
 
}
 
void hat(){
 
fill (#FF0000);
noStroke();
rect (hX, hY+10, 20, 40);
rect (hX-10, hY+50, 40, 5);
fill (#FFFFFF);
rect (hX, hY+20, 20, 5);
rect (hX, hY+30, 20, 5);
rect (hX, hY+40, 20, 5);
}