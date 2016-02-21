void mainGame(){
  
  //call functions
  bordersAndCamera();
  //main character
  muk(mukX-camX, mukY-camY, #aa00ee, #8800dd, .3, 1);
  drawBack(200-camX, -10-camY);
  pokemart(1300-camX, 700-camY, 2);
  //enemies
  drawBall(b1X-camX, b1Y-camY, .75);
  drawBall(b2X-camX, b2Y-camY, .75);



  //rectangular hit box
  fill(0, 100);
  rect(mukX-20-camX, mukY-50-camY, 90, 70);
  
  
  
  //collisions
  //top main
  if(mukX-20-camX+90>200-camX && mukX-20-camX+90<220-camX && mukY-50-camY<300-camY){
    mukX=200-70;
  }
  if(mukY-50-camY<300-camY && mukX-20-camX+90>200-camX && mukX-20-camX<500-camX 
  && mukY-50-camY>280-camY){
    mukY=300+50;
  }
  if(mukX-20-camX<500-camX && mukX-20-camX>480-camX && mukY-50-camY<300-camY){
    mukX=520;
  }
  
  //top right
  if(mukX-20-camX+90>700-camX && mukX-20-camX+90<720-camX && mukY-50-camY+70>200-camY
  && mukY-50-camY<300-camY){
    mukX=630;
  }
  if(mukX-20-camX<900-camX && mukX-20-camX>880-camX && mukY-50-camY+70>200-camY
  && mukY-50-camY<300-camY){
    mukX=920;
  }
  if(mukY-50-camY<300-camY && mukY-50-camY>280-camY && mukX-20-camX+90>700-camX
  && mukX-20-camX<900-camX){
    mukY=350;
  }
  if(mukY-50-camY+70<220-camY && mukY-50-camY+70>200-camY && mukX-20-camX+90>700-camX
  && mukX-20-camX<900-camX){
    mukY=180;
  }
  //second top right
  if(mukX-20-camX+90>1100-camX && mukX-20-camX+90<1120-camX && mukY-50-camY+70>200-camY
  && mukY-50-camY<300-camY){
    mukX=1030;
  }
  if(mukX-20-camX<1300-camX && mukX-20-camX>1280-camX && mukY-50-camY+70>200-camY
  && mukY-50-camY<300-camY){
    mukX=1320;
  }
  if(mukY-50-camY<300-camY && mukY-50-camY>280-camY && mukX-20-camX+90>1100-camX
  && mukX-20-camX<1300-camX){
    mukY=350;
  }
  if(mukY-50-camY+70<220-camY && mukY-50-camY+70>200-camY && mukX-20-camX+90>1100-camX
  && mukX-20-camX<1300-camX){
    mukY=180;
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
  
  if(coin1==0 && coin2==0 && coin3==0 && coin4==0){
    allCoin=1;
  }
  
  
  
  
}