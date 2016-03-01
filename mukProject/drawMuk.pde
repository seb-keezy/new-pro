//code for muk
void muk(int x, int y, color c1, color c2, float s, int q) {
  //regular muk
  fill(c1);
  noStroke();
  ellipse(x, y, 150*s, 50*s);
  ellipse(x+25*s, y+5*s, 150*s, 50*s);
  ellipse(x+75*s, y, 150*s, 50*s);
  ellipse(x-10*s, y-35*s, 100*s, 100*s);
  ellipse(x+50*s, y-35*s, 200*s, 50*s);
  ellipse(x+110*s, y+10*s, 150*s, 50*s);
  ellipse(x+160*s, y-15*s, 150*s, 60*s);
  ellipse(x+30*s, y-70*s, 100*s, 100*s);
  ellipse(x+120*s, y-110*s, 200*s, 90*s);
  ellipse(x+110*s, y-50*s, 200*s, 70*s);
  ellipse(x+105*s, y-70*s, 200*s, 70*s);
  fill(#000000);
  rect(x+50*s, y-110*s, 140*s, 100*s, 100);
  fill(#ccddcc);
  ellipse(x+105*s, y-30*s, 90*s, 40*s);
  fill(c1);
  triangle(x+70*s, y-110*s, x+85*s, y-50*s, x+100*s, y-110*s);
  triangle(x+75*s, y-10*s, x+85*s, y-60*s, x+95*s, y-10*s);
  fill(#ffffff);
  stroke(#000000);
  strokeWeight(1);
  triangle(x+80*s, y-130*s, x+76*s, y-142*s, x+114*s, y-143*s);
  fill(#000000);
  ellipse(x+100*s, y-141*s, 2*s, 2*s);
  //shiny muk
  stroke(c2);
  strokeWeight(5);
  noFill();
  arc(x+5*s, y-15*s, 120*s, 20*s, 0, PI);
  arc(x, y-55*s, 80*s, 40*s, 0, PI);
  arc(x+95*s, y+5*s, 80*s, 30*s, 0, PI);
  arc(x+185*s, y-5*s, 60*s, 20*s, 0, PI);
  arc(x+125*s, y-125*s, 170*s, 20*s, 0, PI);
  arc(x+25*s, y-95*s, 65*s, 30*s, 0, PI);

  if (q==2) {
    stroke(0);
    strokeWeight(1);
    fill (#000000);
    ellipse (x+55, y-40, 20, 20);
    ellipse (x-35+55, y-40, 20, 20);
    fill (#FFFFFF);
    ellipse (x+55, y-40, 15, 15);
    ellipse (x-35+55, y-40, 15, 15);
    fill (#000000);
    rect (x-25+55, y-40, 17, 1);
  }

  if (q==3) {
    fill (#FF0000);
    noStroke();
    rect (x+20, y+10-100, 20, 40);
    rect (x-10+20, y+50-100, 40, 5);
    fill (#FFFFFF);
    rect (x+20, y+20-100, 20, 5);
    rect (x+20, y+30-100, 20, 5);
    rect (x+20, y+40-100, 20, 5);
  }
}