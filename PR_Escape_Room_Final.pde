Apple a;     // declare classes and varibles
Pong b;
PFont scaryFont;
Car elmo;
Menu cookie;
Bedroom h;
int snumber;
Bathroom frank;
boolean show;

void setup() {
  size(800, 600);
  scaryFont=loadFont("BradleyHandITCTT-Bold-48.vlw");   // load font
  elmo=new Car();   // declare classes and starting varibles
  snumber= 1;
  cookie=new Menu();
  frank=new Bathroom();
  show=false;
  h= new Bedroom();
  a=new Apple();
  b= new Pong();
}
void draw() {
  if (snumber==1) {   // allow scene numbers to work
    scene1();
  }
  if (snumber==2) {
    scene2();
  }
  if (snumber==3) {
    scene3();
  }
  if (snumber==4) {
    scene4();
  }
  if (snumber==5) {
    scene5();
  }
  if (snumber==6) {
    scene6();
  }
  if (snumber==7) {
    scene7();
  }
  if (snumber==8) {
    scene8();
  }
  if (snumber==9) {
    scene9();
  }
  if (snumber==10) {
    scene10();
  }
  if (snumber==11) {
    scene11();
  }
  if (snumber==12) {
    scene12();
  }
  if (snumber==13) {
    scene13();
  }
  if (snumber==14) {
    scene14();
  }
  if (snumber==15) {
    scene15();
  }
}
void keyPressed() {
  if (snumber==1) {
    if (key==CODED) {
      if (keyCode == UP) {
        elmo.changeDir("up");   // move the car
      }
      if (keyCode == DOWN) {
        elmo.changeDir("down");
      }
      if (keyCode == LEFT) {
        elmo.changeDir("left");
      }
      if (keyCode == RIGHT) {
        elmo.changeDir("right");
      }
    }
  }
  if (snumber==12) {
    if (key==CODED) {
      if (keyCode == LEFT) {
        a.changeDir("left");   // move the basket
      }
      if (keyCode == RIGHT) {
        a.changeDir("right");
      }
    }
  }
  if (snumber==13) {
    if (key==CODED) {
      if (keyCode == UP) {
        b.changeDir("up");    // move the paddle
      }
      if (keyCode == DOWN) {
        b.changeDir("down");
      }
    }
  }
}

void mousePressed() {
  if (snumber==3) {   // allow mouse pressed functions in their scenes
    frank.keyPad();
    frank.detectTub();
    frank.detectDesk();
    frank.detectLamp();
  }
  if (snumber==4) {
    frank.leaveDetect();
    frank.password();
  }
  if (snumber==6) {
    frank.detectLetter();
    frank.detectLeave();
    frank.detectMag();
  }
  if (snumber==7) {
    frank.exitLetter();
  }
  if (snumber==8) {
    frank.magLeave();
  }
  if (snumber==9) {
    frank.detectExit();
  }
  if (snumber==5) {
    h.detectCarpet();
    h.detectBed();
    h.detectEscape();
  }
  if (snumber==10) {
    h.detectExit();
    h.tabletDetect();
  }
  if (snumber==11) {
    h.detectTree();
    h.detectMemory();
    h.detectExit2();
  }
  if (snumber==14) {
    h.detectsq();
    h.leave();
  }
  if (snumber==2) {
    cookie.checkHitDoor();
    cookie.checkHitDoor2();
    cookie.detectOpen();
  }
}
void scene1() {
  background(#363032);   // background reset
  textFont(scaryFont, 40);
  fill(255, 0, 0);
  textAlign(CENTER);
  text("Welcome to Hotel Escape", width/2, height/6);  // instructions
  text("Your Goal is to Escape all the Chalanges", width/2, height/3);
  text("Drive the Car to the hotel to begin", width/2, height/2);
  elmo.drawRoad();
  elmo.drawCar();
  elmo.moveCar();
  elmo.drawHotel();  // call class functions
  elmo.checkHit();
}
void scene2() {
  cookie.drawMenu();  // call functions
  cookie.win();
}
void scene3() {
  frank.drawScene();
  frank.drawTub();
  frank.drawClock();
  frank.drawDesk();
  frank.drawCode();
  frank.drawWindow();
  frank.drawLamp();
}
void scene4() {
  background(255);
  frank.keyPresser();
  frank.number();
  frank.number2();   // call functions
  frank.number3();
  frank.number4();
  frank.number5();
  frank.number6();
  frank.number7();
  frank.number8();
  frank.number9();
  frank.detect();
}
void scene6() {
  background(255);
  frank.birdTub();
}
void scene7() {
  frank.drawLetter();
}
void scene8() {
  scene3();
  frank.zoomIn();
  frank.magnify();
}
void scene9() {
  background(255);
  frank.drawBottom();
  frank.drawRiddle();  // call functions
}
void scene5() {
  background(255);
  h.drawScene();
  h.drawBed();
  h.detect();
}
void scene10() {
  h.birdBed();
}
void scene11() {
  h.drawInter();
}
void scene12() {
  a.drawApple();
  a.moveApple();
  a.drawCatcher();
  a.moveCatcher();
  a.score();
  a.detect();
}
void scene13() {
  b.drawBall();
  b.drawPaddle();  // call functions
  b.movePaddle();
  b.score();
}
void scene14() {
  h.escape();
  h.win();
}
void scene15() {
  background(255);
  cookie.winTotal();
}
