void drawCoin(int x, int y, int a) {
  stroke(0,a);
  strokeWeight(1);
  fill(#ffff00,a);
  ellipse(x, y, 20, 20);
  fill(#FACA0A,a);
  stroke(#FACA0A,a);
  ellipse(x, y, 10, 10);
}