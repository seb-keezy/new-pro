color muk1=(#aa00ee);
color muk2=(#8800dd);
int bling=1;

void shop() {
  fill(#ffff00);
  text(coinV, 20, 20);
  cursor();
  gX=150;
  gY=150;
  backG=(#2296F2);
  muk(300, 150, muk1, muk2, .3, bling);
  glasses();
  hat();

  fill(#00ffff);
  ellipse(400, 250, 100, 100);
  fill(0);
  text("Back", 381, 251);
  fill(255);
  text("Back", 380, 250);

  stroke(0);
  //yellow button
  fill(#ffff00);
  rect(50, 200, 30, 30);
  //green button
  fill(#00ff00);
  rect(100, 200, 30, 30);
  
  if(bling==4){
    pageNum=5;
  }
}