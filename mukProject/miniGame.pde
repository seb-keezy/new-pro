int c1X=700;
int c1Y=200;
int c1VX=15;

int c2X=600;
int c2Y=200;
int c2VX=10;

int c3X=600;
int c3Y=200;
int c3VX=12;

int coinX=(int)random(300)+50;
int coinY=(int)random(200)+50;

int count;
int allCoin2;
int coinV=4;

void miniGame() {
  backG=(#F4F2FF);
  stroke(0);
  strokeWeight(0);
  fill(#5FE83B);
  ellipse(100, 300, 201, 101);
  ellipse(350, 100, 201, 101);
  fill(#A9FC5C);
  ellipse(100, 300, 200, 100);
  ellipse(350, 100, 200, 100);

  muk(mouseX-25, mouseY+20, muk1, muk2, .3, bling);
  noCursor();
  drawBall(c1X, c1Y, .75);
  c1X-=c1VX;
  c2X-=c2VX;
  count++;
  text(count, 20, 20);

  if (allCoin2==1) {
    drawCoin(coinX, coinY);
  }

  if (c1X<-100) {
    c1X=600;
    allCoin2=1;
    c1Y=(int)random(200)+50;
    coinX=(int)random(300)+50;
    coinY=(int)random(200)+50;
  }

  if (c2X<-100) {
    c2X=600;
    c2Y=(int)random(200)+50;
  }

  if (c3X<-100) {
    c3X=600;
    c3Y=(int)random(200)+50;
  }

  if (dist(mouseX-25, mouseY+20, coinX, coinY)<80) {
    allCoin2=0;
  }

  if (count>250) {
    drawBall(c2X, c2Y, .75);
    coinV=4;
    c2VX=10;
  }

  if (count>500) {
    drawBall(c3X, c3Y, .75);
    coinV=8;
    c3VX=12;
  }

  if (count>750) {
    coinV=12;
    pageNum=2;
  }

  if (dist(mouseX-25, mouseY+20, c1X, c1Y)<70) {
    pageNum=2;
    c1X=700;
    c1Y=200;
    c1VX=15;

    c2X=600;
    c2Y=200;
    c2VX=0;

    c3X=600;
    c3Y=200;
    c3VX=0;

    coinX=(int)random(300)+50;
    coinY=(int)random(200)+50;

    count=0;
    allCoin2=0;
  }

  if (dist(mouseX-25, mouseY+20, c2X, c2Y)<70 && count>250) {
    pageNum=2;
    c1X=700;
    c1Y=200;
    c1VX=15;

    c2X=600;
    c2Y=200;
    c2VX=0;

    c3X=600;
    c3Y=200;
    c3VX=0;

    coinX=(int)random(300)+50;
    coinY=(int)random(200)+50;

    count=0;
    allCoin2=0;
  }

  if (dist(mouseX-25, mouseY+20, c3X, c3Y)<70 && count>500) {
    pageNum=2;
    c1X=700;
    c1Y=200;
    c1VX=15;

    c2X=600;
    c2Y=200;
    c2VX=0;

    c3X=600;
    c3Y=200;
    c3VX=0;

    coinX=(int)random(300)+50;
    coinY=(int)random(200)+50;

    count=0;
    allCoin2=0;
  }
}