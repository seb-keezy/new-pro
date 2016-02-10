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

