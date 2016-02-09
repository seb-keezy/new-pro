
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