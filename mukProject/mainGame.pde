void mainGame() {

  //call functions
  bordersAndCamera();
  //main character
  muk(mukX-camX, mukY-camY, #aa00ee, #8800dd, .3, bling);
  drawBack(200-camX, -10-camY);
  pokemart(1300-camX, 700-camY, 2);
  //enemies
  drawBall(b1X-camX, b1Y-camY, .75);
  drawBall(b2X-camX, b2Y-camY, .75);
  drawBall(b3X-camX, b3Y-camY, .75);

  //rectangular hit box
  //fill(0, 100);
  //rect(mukX-20-camX, mukY-50-camY, 90, 70);
  //circular hit box
  //ellipse(mukX+25, mukY-20, 80, 80);

  //barrier collisions
  //top main
  if (mukX-20-camX+90>200-camX && mukX-20-camX+90<220-camX && mukY-50-camY<300-camY) {
    mukX=200-70;
  }
  if (mukY-50-camY<300-camY && mukX-20-camX+90>200-camX && mukX-20-camX<500-camX 
    && mukY-50-camY>280-camY) {
    mukY=300+50;
  }
  if (mukX-20-camX<500-camX && mukX-20-camX>480-camX && mukY-50-camY<300-camY) {
    mukX=520;
  }
  //top right
  if (mukX-20-camX+90>700-camX && mukX-20-camX+90<720-camX && mukY-50-camY+70>200-camY
    && mukY-50-camY<300-camY) {
    mukX=630;
  }
  if (mukX-20-camX<900-camX && mukX-20-camX>880-camX && mukY-50-camY+70>200-camY
    && mukY-50-camY<300-camY) {
    mukX=920;
  }
  if (mukY-50-camY<300-camY && mukY-50-camY>280-camY && mukX-20-camX+90>700-camX
    && mukX-20-camX<900-camX) {
    mukY=350;
  }
  if (mukY-50-camY+70<220-camY && mukY-50-camY+70>200-camY && mukX-20-camX+90>700-camX
    && mukX-20-camX<900-camX) {
    mukY=180;
  }
  //second top right
  if (mukX-20-camX+90>1100-camX && mukX-20-camX+90<1120-camX && mukY-50-camY+70>200-camY
    && mukY-50-camY<300-camY) {
    mukX=1030;
  }
  if (mukX-20-camX<1300-camX && mukX-20-camX>1280-camX && mukY-50-camY+70>200-camY
    && mukY-50-camY<300-camY) {
    mukX=1320;
  }
  if (mukY-50-camY<300-camY && mukY-50-camY>280-camY && mukX-20-camX+90>1100-camX
    && mukX-20-camX<1300-camX) {
    mukY=350;
  }
  if (mukY-50-camY+70<220-camY && mukY-50-camY+70>200-camY && mukX-20-camX+90>1100-camX
    && mukX-20-camX<1300-camX) {
    mukY=180;
  }

  //middle main
  if (mukX-20-camX+90>200-camX && mukX-20-camX+90<220-camX && mukY-50-camY<600-camY
    && mukY-50-camY+70>500-camY) {
    mukX=130;
  }
  if (mukX-20-camX<900-camX && mukX-20-camX>880-camX && mukY-50-camY<600-camY
    && mukY-50-camY+70>500-camY) {
    mukX=920;
  }
  if (mukY-50-camY<600-camY && mukY-50-camY>580-camY && mukX-20-camX<900-camX
    && mukX-20-camX+90>200-camX) {
    mukY=650;
  }
  if (mukY-50-camY+70>500-camY && mukY-50-camY+70<520-camY && mukX-20-camX<900-camX
    && mukX-20-camX+90>200-camX) {
    mukY=480;
  }
  //middle right
  if (mukX-20-camX<1300-camX && mukX-20-camX>1280-camX && mukY-50-camY<600-camY
    && mukY-50-camY+70>500-camY) {
    mukX=1320;
  }
  if (mukX-20-camX+90>1100-camX && mukX-20-camX+90<1120-camX && mukY-50-camY<600-camY
    && mukY-50-camY+70>500-camY) {
    mukX=1030;
  }
  if (mukY-50-camY<600-camY && mukY-50-camY>580-camY && mukX-20-camX<1300-camX
    && mukX-20-camX+90>1100-camX) {
    mukY=650;
  }
  if (mukY-50-camY+70>500-camY && mukY-50-camY+70<520-camY && mukX-20-camX<1300-camX
    && mukX-20-camX+90>1100-camX) {
    mukY=480;
  }

  //bottom main
  if (mukY-50-camY+70>800-camY && mukY-50-camY+70<820-camY && mukX-20-camX<300-camX) {
    mukY=780;
  }
  if (mukX-20-camX<300-camX && mukX-20-camX>280-camX && mukY-50-camY+70>800-camY) {
    mukX=320;
  }
  //bottom right
  if (mukY-50-camY+70>800-camY && mukY-50-camY+70<820-camY && mukX-20-camX<900-camX
    && mukX-20-camX+90>500-camX) {
    mukY=780;
  }
  if (mukX-20-camX<900-camX && mukX-20-camX>880-camX && mukY-50-camY+70>800-camY) {
    mukX=920;
  }
  if (mukX-20-camX+90>500-camX && mukX-20-camX+90<520-camX && mukY-50-camX+70>800-camX) {
    mukX=430;
  }

  //pokeball collisions
  if (dist(mukX+25, mukY-10, b1X, b1Y)<70) {
    mukX=50;
    mukY=50;

    camX=0;
    camY=0;

    mapX=1500;
    mapY=1000;

    goR=0;
    goL=0;
    goU=0;
    goD=0;

    pageNum=0;
    coin1=1;
    coin2=1;
    coin3=1;
    coin4=1;
    allCoin=0;

    b1X=300;
    b1Y=400;
    b1VX=8;

    b2X=1000;
    b2Y=100;
    b2VY=8;

    b3X=1400;
    b3Y=700;
    b3VX=8;
  }

  if (dist(mukX+25, mukY-10, b2X, b2Y)<70) {
    mukX=50;
    mukY=50;

    camX=0;
    camY=0;

    mapX=1500;
    mapY=1000;

    goR=0;
    goL=0;
    goU=0;
    goD=0;

    pageNum=0;
    coin1=1;
    coin2=1;
    coin3=1;
    coin4=1;
    allCoin=0;

    b1X=300;
    b1Y=400;
    b1VX=8;

    b2X=1000;
    b2Y=100;
    b2VY=8;

    b3X=1400;
    b3Y=700;
    b3VX=8;
  }

  if (dist(mukX+25, mukY-10, b3X, b3Y)<70) {
    mukX=50;
    mukY=50;

    camX=0;
    camY=0;

    mapX=1500;
    mapY=1000;

    goR=0;
    goL=0;
    goU=0;
    goD=0;

    pageNum=0;
    coin1=1;
    coin2=1;
    coin3=1;
    coin4=1;
    allCoin=0;

    b1X=300;
    b1Y=400;
    b1VX=8;

    b2X=1000;
    b2Y=100;
    b2VY=8;

    b3X=1400;
    b3Y=700;
    b3VX=8;
  }
  //drawCoins
  if (coin1==1) {
    drawCoin(100-camX, 250-camY);
  }
  if (dist(100-camX, 250-camY, mukX-camX, mukY-camY)<80) {
    coin1=0;
  } 
  if (coin1==0) {
    drawCoin(20, 20);
  }

  if (coin2==1) {
    drawCoin(600-camX, 50-camY);
  }
  if (dist(600-camX, 50-camY, mukX-camX, mukY-camY)<80) {
    coin2=0;
  }
  if (coin2==0) {
    drawCoin(50, 20);
  }


  if (coin3==1) {
    drawCoin(400-camX, 850-camY);
  }
  if (dist(400-camX, 850-camY, mukX-camX, mukY-camY)<80) {
    coin3=0;
  }
  if (coin3==0) {
    drawCoin(80, 20);
  }

  if (coin4==1) {
    drawCoin(1400-camX, 400-camY);
  }
  if (dist(1400-camX, 400-camY, mukX-camX, mukY-camY)<80) {
    coin4=0;
  }
  if (coin4==0) {
    drawCoin(110, 20);
  }

  //collecting all coins
  if (coin1==0 && coin2==0 && coin3==0 && coin4==0) {
    allCoin=1;
  }
  textSize(20);
  fill(#ED19FC);
  //collision with mart
  if(mukX-20-camX+90>1300-camX && mukX-20-camX+90<1320-camX && mukY-50-camY<900-camY
  && mukY-50-camY+70>700-camY && allCoin==0){
    mukX=1230;
    text("Need more coins to enter",20,300);
  }
  if(mukY-50-camY+70>700-camY && mukY-50-camY+70<720-camY && mukX-20-camX<1500-camX
  && mukX-20-camX+90>1300-camX && allCoin==0){
    mukY=680;
    text("Need more coins to enter",20,300);
  }
  if(mukY-50-camY<900-camY && mukY-50-camY>880-camY && mukX-20-camX<1500-camX
  && mukX-20-camX+90>1300-camX && allCoin==0){
    mukY=950;
    text("Need more coins to enter",20,300);
  }
  
  if(mukX-20-camX+90>1300-camX && mukX-20-camX+90<1320-camX && mukY-50-camY<900-camY
  && mukY-50-camY+70>700-camY && allCoin==1){
    mukX=1230;
    pageNum=2;
  }
  if(mukY-50-camY+70>700-camY && mukY-50-camY+70<720-camY && mukX-20-camX<1500-camX
  && mukX-20-camX+90>1300-camX && allCoin==1){
    mukY=680;
    pageNum=2;
  }
  if(mukY-50-camY<900-camY && mukY-50-camY>880-camY && mukX-20-camX<1500-camX
  && mukX-20-camX+90>1300-camX && allCoin==1){
    mukY=950;
  }

  //pokeball movement
  b1X+=b1VX;
  if (b1X>1450-camX) {
    b1VX=-b1VX;
    b1X=1450-camX;
  }
  if (b1X<300-camX) {
    b1VX=-b1VX;
    b1X=300-camX;
  }

  b2Y+=b2VY;
  if (b2Y>900-camY) {
    b2VY=-b2VY;
    b2Y=900-camY;
  }
  if (b2Y<100-camY) {
    b2VY=-b2VY;
    b2Y=100-camY;
  }

  b3X-=b3VX;
  if (b3X>1450-camX) {
    b3VX=-b3VX;
    b3X=1450-camX;
  }
  if (b3X<300-camX) {
    b3VX=-b1VX;
    b3X=300-camX;
  }
}