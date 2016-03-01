int bling=1;

void shop() {
  fill(#ffff00);
  text(coinV, 20, 20);
  cursor();
  gX=150;
  gY=150;
  backG=(#2296F2);
  muk(300, 150, #aa00ee, #8800dd, .3, bling);
  glasses();
  hat();

  fill(#00ffff);
  ellipse(400, 250, 100, 100);
  fill(0);
  text("Back", 381, 251);
  fill(255);
  text("Back", 380, 250);
}