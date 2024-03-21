class Bedroom {
  PImage carpet;
  PImage back;   // varible declare
  boolean carp;
  PImage bed;
  PImage bed2;
  PImage tablet;
  float tx;
  float ty;
  PImage tablet2;
  PImage tree;
  float cdia;
  boolean red;
  boolean blue;
  boolean green;
  boolean black;
  boolean white;
  boolean yellow;
  boolean lightBlue;
  boolean win;
  Bedroom() {
    carpet=loadImage("8222.png");   // set varibles
    carpet.resize(width/2, width/2);
    back=loadImage("istockphoto-1200234292-612x612.jpeg");
    back.resize(width, height);
    bed=loadImage("thp-bed-q-07_silo_3_2x3.png");
    bed.resize(400, 400);
    carp=false;
    bed2=loadImage("thp-bed-q-07_silo_3_2x3.png");
    bed2.resize(width, height);
    tablet=loadImage("ipad-pro-10-5-inch-display-assembly-white-1.png");
    tablet.resize(height/4, height/4);
    tx=width/2+width/8;
    ty=height/6.5+width/8+width/16+width/32;
    tablet2=loadImage("ipad-pro-10-5-inch-display-assembly-white-1.png");
    tablet2.resize(width, height);
    tree=loadImage("image_processing20200422-11729-1yl35z.png");
    tree.resize(width/8, width/8);
    cdia=width/16;
    red=false;
    blue=false;
    green=false;
    black=false;
    white=false;
    yellow=false;
    lightBlue=false;
    win=false;
  }
  void drawScene() {
    background(back);  // draw scene
    fill(255, 0, 0);
    noStroke();
    rect(width/8, width/2+height/6, width/16, width/16);
    image(carpet, width/8-width/16-width/16-width/32, width/2-width/16-width/16);
    if (carp==true) { // rotate the carpet if clicked
      background(back);
      fill(255, 0, 0);
      noStroke();
      rect(width/8, width/2+height/6, width/16, width/16);
      pushMatrix();
      rotate(PI/10.0);
      image(carpet, width/8-width/16-width/16-width/32, width/2-width/16-width/16);
      popMatrix();
    }
  }
  boolean detectCarpet() {
    if (carp==false) {
      if (mouseX>width/8-width/16&&mouseX<width/8-width/16-width/16-width/32+width/3&&mouseY>width/2&&mouseY<width/2-width/16-width/16+width/2) {  // detect if carpet has been hit
        carp=true;
      }
    }
    return false;
  }
  void drawBed() {
    image(bed, width/8, height/3);   // draw scene
  }
  void detectBed() {
    if (mouseX>width/8&&mouseX<width/8+400&&mouseY>height/3&&mouseY<height/3+400) {  // detect bed
      snumber=10;
    }
  }
  void birdBed() {
    image(back, 0, 0);   // if bed is clicked draw the tablet
    image(bed2, width/12, height/6);
    image(tablet, tx, ty);
  }
  void detectExit() {
    if (mouseX>width/12&&mouseX<width/12+width&&mouseY>height/2.5&&mouseY<height/3+height) {
      snumber=10;
    } else {  // if not clicked exit scene
      snumber=5;
    }
  }
  void tabletDetect() {
    if (mouseX>tx&&mouseX<tx+height/4&&mouseY>ty&&mouseY<ty+height/4) {
      snumber=11;   // if tablet is hit, go there
    }
  }
  void drawInter() {
    background(255);
    image(tablet2, width/16, 0);
    fill(255);  // draw the interface of the tablet
    strokeWeight(3);
    rect(width/3, height/6, width/8, width/8);
    rect(width/3+width/3, height/6, width/8, width/8);
    image(tree, width/3, height/6);
    if (a.win==true) {   // if the first game is won, show the color
      fill(0, 0, 255);
      rect(width/3, height/6, width/8, width/8);
    }
    if (b.win==true) {
      fill(0, 255, 0);  // if second game is won, show color
      rect(width/3+width/3, height/6, width/8, width/8);
    }
    if (b.win==true&&a.win==true) {
      fill(255, 0, 0);
      noStroke();
      ellipse(width-width/8, height/6, cdia, cdia);   // if obth games are won, then have ability to exit game
      fill(0);
      text("X", width-width/8, height/6+height/40);
    }
  }
  void detectTree() {
    if (a.win==false) {
      if (mouseX>width/3&&mouseX<width/3+width/8&&mouseY>height/6&&mouseY<height/6+width/8) {  // go to game if clicked
        snumber=12;
      }
    }
  }
  void detectMemory() {
    if (b.win==false) {
      if (mouseX>width/3+width/3&&mouseX<width/3+width/3+width/8&&mouseY>height/6&&mouseY<height/6+width/8) {  // was memory ut switched to pong, detect if clicked
        snumber=13;
      }
    }
  }
  void detectExit2() {
    if (a.win==true&&b.win==true) {   // if both games are won, allow exit
      float d= dist(mouseX, mouseY, width-width/8, height/6);
      if (d<cdia/2) {
        snumber=5;
      }
    }
  }
  void detect() {
    fill(255);
    strokeWeight(1);
    rect(width-width/4, height/2+height/12+height/16, 50, 25);  // escape option
  }
  void detectEscape() {
    if (mouseX>width-width/4&&mouseX<width-width/4+50&&mouseY>height/2+height/12+height/16&&mouseY<height/2+height/12+height/16+25) {   // detect if clicked
      snumber=14;
    }
  }
  void escape() {
    background(255);
    textAlign(CENTER);
    textSize(30);
    text("Select all of the different squares you saw", width/2, height/6);  // instructions
    strokeWeight(2);
    if (black==false) { // if the varibles are true, outline square in yellow
      stroke(0);
    }
    if (black==true) {
      stroke(255, 255, 0);
    }
    fill(0);
    rect(61, 164, 50, 50);
    stroke(0);
    if (red==false) {
      stroke(0);
    }
    if (red==true) {
      stroke(255, 255, 0);
    }
    fill(255, 0, 0);
    rect(161, 164, 50, 50);
    stroke(0);
    if (white==false) {
      stroke(0);
    }
    if (white==true) {
      stroke(255, 255, 0);
    }
    fill(255);
    rect(261, 164, 50, 50);
    stroke(0);
    if (yellow==false) {
      stroke(0);
    }
    if (yellow==true) {
      stroke(255, 255, 0);
    }
    fill(255, 255, 0);
    rect(361, 164, 50, 50);
    stroke(0);
    if (lightBlue==false) {
      stroke(0);
    }
    if (lightBlue==true) {
      stroke(255, 255, 0);
    }
    fill(0, 255, 255);
    rect(461, 164, 50, 50);
    stroke(0);
    if (green==false) {
      stroke(0);
    }
    if (green==true) {
      stroke(255, 255, 0);
    }
    fill(0, 255, 0);
    rect(561, 164, 50, 50);
    stroke(0);
    if (blue==false) {
      stroke(0);
    }
    if (blue==true) {
      stroke(255, 255, 0);
    }
    fill(0, 0, 255);
    rect(661, 164, 50, 50);
    fill(255);
    stroke(0);
    strokeWeight(1);
    rect(0, 0, 100, 50);
    fill(0);
    text("EXIT", 25, 25);  // draw exit ability
    fill(0);
    strokeWeight(2);
  }
  void detectsq() {
    if (mouseX>61&&mouseX<61+50&&mouseY>164&&mouseY<164+50) {   // detect if squares are hit
      black=true;
    }
    if (mouseX>161&&mouseX<161+50&&mouseY>164&&mouseY<164+50) {
      red=true;
    }
    if (mouseX>261&&mouseX<261+50&&mouseY>164&&mouseY<164+50) {
      white=true;
    }
    if (mouseX>361&&mouseX<361+50&&mouseY>164&&mouseY<164+50) {
      yellow=true;
    }
    if (mouseX>461&&mouseX<461+50&&mouseY>164&&mouseY<164+50) {
      lightBlue=true;
    }
    if (mouseX>561&&mouseX<561+50&&mouseY>164&&mouseY<164+50) {
      green=true;
    }
    if (mouseX>661&&mouseX<661+50&&mouseY>164&&mouseY<164+50) {
      blue=true;
    }
    if (win==true) {
      red=false;
      blue=false;
      green=false;   // if won, reset booleans
      black=false;
      yellow=false;
      white=false;
      lightBlue=false;
    }
  }
  void win() {
    if (red==true&&blue==true&&green==true&&black==false&&yellow==false&&white==false&&lightBlue==false) {
      win=true;
      snumber=2;   // if won, send to level select
    }
  }
  void leave() {
    if (mouseX>0&&mouseX<100&&mouseY>0&&mouseY<50) {
      snumber=5;
      red=false;   // if code is left, reset all boolean
      blue=false;
      green=false;
      black=false;
      yellow=false;
      white=false;
      lightBlue=false;
    }
  }
}
