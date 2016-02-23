int mukX=50;
int mukY=50;

int camX;
int camY;

int mapX=1500;
int mapY=1000;

int goR;
int goL;
int goU;
int goD;

int pageNum;
int coin1=1;
int coin2=1;
int coin3=1;
int coin4=1;
int allCoin;

int b1X=300;
int b1Y=400;
int b1VX=8;

int b2X=1000;
int b2Y=100;
int b2VY=8;

int b3X=1400;
int b3Y=700;
int b3VX=8;

void setup() {
  frameRate(30);
  size(800, 600);
  noStroke();
}

void draw() {
  background(#FCBC08);
  //muk movement
  if (goR==1) {
    mukX+=5;
  }
  if (goL==1) {
    mukX-=5;
  }
  if (goU==1) {
    mukY-=5;
  }
  if (goD==1) {
    mukY+=5;
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
  //game modes based on page number
  if (pageNum==0) {
    mainGame();
  }
}


void bordersAndCamera() {
  //left
  if (mukX < 0) {
    mukX = 0;
  }
  //right       
  if (mukX > mapX - 40) {
    mukX = mapX - 40;
  }
  //top      
  if (mukY < 0) {
    mukY = 0;
  }
  //bottom     
  if (mukY > mapY - 40) {
    mukY = mapY - 40;
  }

  //horizontal camera 
  if (mukX > camX + 240 && camX < (mapX - width)) {//ASSUMING muk VELOCITY = 40
    camX = mukX - 240;
  }

  if (mukX < camX + 200 && camX > 0) {//ASSUMING muk VELOCITY = 40
    camX = mukX - 200;
  }
  //vertical cam 
  if (mukY > camY + 180 && camY < (mapY - height)) {//ASSUMING muk VELOCITY = 40
    camY = mukY - 180;
  }
  if (mukY < camY + 120 && camY > 0) {//ASSUMING muk VELOCITY = 40
    camY = mukY - 120;
  }
}


void keyPressed() {
  if (key  == 's' || keyCode == DOWN) {
    goD=1;
  }
  if (key  == 'w' || keyCode == UP) {
    goU=1;
  }
  if (key  == 'd' || keyCode == RIGHT) {
    goR=1;
  }
  if (key  == 'a' || keyCode == LEFT) {
    goL=1;
  }


  if (keyCode==RIGHT) {
    goR=1;
  }
  if (keyCode==LEFT) {
    goL=1;
  }
  if (keyCode==DOWN) {
    goD=1;
  }
  if (keyCode==UP) {
    goU=1;
  }
  bordersAndCamera();
}

void keyReleased() {
  if (keyCode==RIGHT) {
    goR=0;
  }
  if (keyCode==LEFT) {
    goL=0;
  }
  if (keyCode==DOWN) {
    goD=0;
  }
  if (keyCode==UP) {
    goU=0;
  }
}