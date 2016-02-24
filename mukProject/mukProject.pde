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

color backG=(#FCBC08);

void setup() {
  frameRate(30);
  size(480, 320);
  noStroke();
}

void draw() {
  background(backG);
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

 
  //game modes based on page number
  if (pageNum==0) {
    mainGame();
  }
  if (pageNum==2){
    market();
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
  
  
  
  if (key == '2'){
    pageNum=2;
  }
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