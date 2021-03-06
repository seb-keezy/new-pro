int mukX=50;
int mukY=50;

int camX;
int camY;

int mapX=1500;
int mapY=1300;

int goR;
int goL;
int goU;
int goD;

float pageNum;
int coin1=1;
int coin2=1;
int coin3=1;
int coin4=1;
int coin5=1;
int allCoin;

int b1X=300;
float b1Y;
int b1VX=12;
int b1T;

int b2X=1000;
int b2Y=100;
int b2VY=25;

int b3X=1400;
float b3Y;
int b3VX=12;
int b3T;

float b4X=800;
float b4Y=1200;
float b4T;

float b5X=1100;
float b5Y=1200;
float b5T=2;

int b6X=100;
int b6Y=1200;
int b6VX=8;

color backG=(255);

void setup() {
  frameRate(30);
  size(480, 320);
  noStroke();
}

void title() {
  backG=255;
  fill(#aa00ee);
  textSize(20);
  text("By Blas & Sebastian", 20, 300);
  textSize(40);
  text("Muk Adventures", 75, 150);
  fill(0);
  text("Muk Adventures", 76, 151);
  fill(#8800dd);
  text("Muk Adventures", 77, 152);

  fill(#00ffff);
  ellipse(400, 250, 100, 100);
  fill(0);
  textSize(20);
  text("Next", 381, 251);
  fill(255);
  text("Next", 380, 250);
}

void draw() {
  background(backG);
  //muk movement
  if (goR==1) {
    mukX+=6;
  }
  if (goL==1) {
    mukX-=6;
  }
  if (goU==1) {
    mukY-=6;
  }
  if (goD==1) {
    mukY+=6;
  }


  //game modes based on page number
  if (pageNum==0) {
    title();
  }
  if (pageNum==.5) {
    story();
  }
  if (pageNum==1) {
    mainGame();
  }

  if (pageNum==2) {
    market();
  }
  if (pageNum==3) {
    miniGame();
  }
  if (pageNum==4) {
    shop();
  }
  if (pageNum==5) {
    endGame();
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


  if (key == '1') {
    pageNum=1;
  }
  if (key == '2') {
    pageNum=2;
  }
  if (key == '3') {
    pageNum=3;
  }
  if (key == '4') {
    pageNum=4;
  }
  if (key== '5') {
    pageNum=5;
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


void mousePressed() {
  if (mouseX>350 && mouseX<420 && mouseY>50 && mouseY<160 && pageNum==2) {
    pageNum=3;
  }
  if (mouseX>0 && mouseX<250 && mouseY>125 && mouseY<275 && pageNum==2) {
    pageNum=4;
  }

  if (mouseX>190 && mouseX<230 && mouseY>130 && mouseY<175 && pageNum==4 && coinV>=4
    && bling==1) {
    bling=3;
    coinV=coinV-4;
  }
  if (mouseX>190 && mouseX<230 && mouseY>130 && mouseY<175 && pageNum==4 
    && coinV>=4 && bling==2) {
    bling=4;
    coinV=coinV-4;
  }

  if (mouseX>150-35 && mouseX<150+10 && mouseY>140 && mouseY<160 && pageNum==4 
    && coinV>=4 && bling==1) {
    bling=2;
    coinV=coinV-4;
  }
  if (mouseX>150-35 && mouseX<150+10 && mouseY>140 && mouseY<160 && pageNum==4 
    && coinV>=4 && bling==3) {
    bling=4;
    coinV=coinV-4;
  }

  if (dist(mouseX, mouseY, 400, 250)<50 && pageNum==4) {
    pageNum=2;
  }
  if (dist(mouseX, mouseY, 400, 250)<50 && pageNum==0) {
    pageNum=.5;
  }
  if (dist(mouseX, mouseY, 100, 250)<50 && pageNum==.5) {
    pageNum=1;
  }


  if (mouseX>50 && mouseX<80 && mouseY>200 && mouseY<230 && pageNum==4 && coinV>=4) {
    coinV=coinV-4;
    muk1=(#ffff00);
    muk2=(#F5D416);
  }

  if (mouseX>100 && mouseX<130 && mouseY>200 && mouseY<230 && pageNum==4 && coinV>=4) {
    coinV=coinV-4;
    muk1=(#27F0A4);
    muk2=(#00ff00);
  }
  if (mouseX>15 && mouseX<60 && mouseY>35 && mouseY<65 && pageNum==2) {
    pageNum=1;
  }
  if (dist(mouseX, mouseY, 400, 250)<50 && pageNum==5) {
    pageNum=4;
  }
}

void endGame() {
  background(255);
  fill(#aa00ee);
  textSize(40);
  text("Congrats! Muk is", 30, 150);
  text("Swagged Out", 60, 200);

  fill(#00ffff);
  ellipse(400, 250, 100, 100);
  fill(0);
  textSize(20);
  text("Resume", 371, 256);
  fill(255);
  text("Resume", 370, 255);
}

void story() {
  textSize(20);
  fill(#aa00ee);
  text("Help Muk get to the", 50, 100);
  text("Pokemart so he can get", 50, 140);
  text("a fedora and a cane!", 50, 180);
  fill(#8800dd);
  text("Help Muk get to the", 51, 101);
  text("Pokemart so he can get", 51, 141);
  text("a fedora and a cane!", 51, 181);
  strokeWeight(1);
  stroke(0);
  fill(#00ffff);
  ellipse(100, 250, 100, 100);
  fill(0);
  textSize(20);
  text("Start", 81, 251);
  fill(255);
  text("Start", 80, 250);
  muk(300,250,#aa00ee,#8800dd,.5,1);
}