int c1X=550;
int c1Y=200;
int c1VX=15;

int c2X=550;
int c2Y=200;
int c2VX=10;

int c3X=550;
int c3Y=200;
int c3VX=12;

int coinX=(int)random(300)+50;
int coinY=(int)random(200)+50;

int count;
int allCoin2;
int coinV=4;

void miniGame(){
  backG=(#F4F2FF);
  muk(mouseX-25,mouseY+20,#aa00ee, #8800dd, .3, 1);
  noCursor();
  drawBall(c1X,c1Y,.75);
  c1X-=c1VX;
  c2X-=c2VX;
  count++;
  text(count,20,20);
  
  if(allCoin2==1){
    drawCoin(coinX,coinY);
  }
  
  if(c1X<-100){
    c1X=550;
    allCoin2=1;
    c1Y=(int)random(200)+50;
    coinX=(int)random(300)+50;
    coinY=(int)random(200)+50;
  }
  
  if(c2X<-100){
    c2X=550;
    c2Y=(int)random(200)+50;
  }
  
  if(c3X<-100){
    c3X=550;
    c3Y=(int)random(200)+50;
  }
  
  if(dist(mouseX-25,mouseY+20,coinX,coinY)<80){
    allCoin2=0;
  }
  
  if(count>250){
    drawBall(c2X,c2Y,.75);
    coinV=4;
  }
  
  if(count>500){
    drawBall(c3X,c3Y,.75);
    coinV=8;
  }
  
  
  
}