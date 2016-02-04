int mukX;
int mukY;

int camX;
int camY;

int mapX=800;
int mapY=800;

int goR;
int goL;
int goU;
int goD;

int pageNum;
int fill=255;

void setup() {
  frameRate(30);
  size(480, 320);
  noStroke();
}

void draw() {
  background(#00ff00);
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
  bordersAndCamera();
  muk(mukX-camX, mukY-camY, #aa00ee, #8800dd, .3, 1);
  drawCoin(100-camX, 250-camY,fill);
  
  if(dist(100-camX,250-camY,mukX+105,mukY-30)<45){
    fill=0;
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