class Menu {
  PImage door;
  boolean unlock;
  float dx;
  float dy;
  float dx1;  // varible declare
  float dy1;
  float dx2;
  float dy2;
  PFont number;
  PImage open;
  float dx3;
  float dy3;
  int fade;
  float [] cx;
  float [] cy;
  float [] speed;
  int [] r;
  int [] g;
  int [] b;
  Menu() {
    door=loadImage("58-581997_white-door-png-clipart.png");
    door.resize(100, 200);
    dx=width/8+width/8-width/16;  // set varibles and images
    dy=width/8+width/8;
    dx1=4*width/8-width/16;
    dy1=width/8+width/8;
    dx2=6*width/8-width/16;
    dy2=width/8+width/8;
    number=loadFont("Didot-Bold-48.vlw");
    open=loadImage("d4wy1b3-87e53dea-fe30-4569-be2c-e1a6c2159d52.png");
    open.resize(200, 225);
    dx3=width/8+width/8-width/16-width/16;
    dy3=width/8+width/8;
    fade=0;
    cx= new float [200];
    cy=new float [200];
    speed= new float [200];
    r= new int [200];
    g= new int [200];
    b= new int [200];  // set confeti
    for (int k=0; k<cx.length; k=k+1) {  // for loop
      cx[k]=random(0, width);
      cy[k]=random(-height, 0);
      speed[k]=random(1, 4);
      r[k]=int(random(0, 255));
      g[k]=int(random(0, 255));
      b[k]=int(random(0, 255));
    }
  }
  boolean checkHitDoor2() {
    if (h.win==false) {
      if (mouseX>dx1&&mouseX<dx1+width/8&&mouseY>dy1&&mouseY<dy1+height/3) {   // if second door is hit, then take to second scene
        snumber=5;
      }
    }
    return false;
  }
  void drawMenu() {
    background(#554D2A);
    image(door, dx, dy);
    image(door, dx1, dy1);  // draw menu/ level selecgt
    textFont(number, 50);
    fill(0);
    text("1", dx+width/16, height/2);
    text("2", dx1+width/16, height/2);
    fill(#D85B21);
    textAlign(CENTER);
    text("Level Select", width/2, height/6);
  }
  boolean checkHitDoor() {
    if (frank.win==false) {  // check if first door is hit
      if (mouseX>dx&&mouseX<dx+width/8&&mouseY>dy&&mouseY<dy+height/3) {
        snumber=3;
      }
    }
    return false;
  }
  void win() {
    if (frank.win ==true) {  // if first scene is won, draw the open door
      background(#554D2A);
      image(door, dx1, dy1);
      textFont(number, 50);
      fill(0);
      text("2", dx1+width/16, height/2);
      fill(#D85B21);
      textAlign(CENTER);
      text("Level Select", width/2, height/6);
      image(open, dx3, dy3);
    }
    if (h.win==true) {  // if second scene is won, draw open door
      background(#554D2A);
      image(open, dx1, dy1);
      textFont(number, 50);
      fill(0);
      fill(#D85B21);
      textAlign(CENTER);
      text("Level Select", width/2, height/6);
      image(door, dx, dy);
      fill(0);
      text("1", dx+width/16, height/2);
    }
    if (frank.win==true&&h.win==true) {  // if both won, then send to final screen
      snumber=15;
    }
  }
  void detectOpen() {
    if (frank.win==true) {
      if (mouseX>dx3&&mouseX<dx3+200&&mouseY>dy3&&mouseY<dy3+225) {  // if scene completed, then allow user to go back
        snumber=3;
      }
    }
  }
  void winTotal() {
    if (snumber==15) { // if game is won, draw ending scene
      fade=fade+1;
      textSize(100);
      textAlign(CENTER);
      fill(0, 0, 0, fade);  // allow text to fade in
      text("YOU ESCAPED", width/2, height/6);
      fill(0, 0, 0, fade/2);
      textSize(50);
      text("CONGRATULATIONS", width/2, height/4);  // text
      fill(0, 0, 0, fade/4);
      text("THANKS FOR PLAYING", width/2, height/1.5);
      for (int k=0; k<cx.length; k=k+1) {  // draw confeti
        fill(r[k], g[k], b[k]);
        ellipse(cx[k], cy[k], 10, 10);
        cy[k]=cy[k]+1*speed[k];  // move confeti
        if (cy[k]-10>height) {
          cx[k]=random(0, width);
          cy[k]=random(-height, 0);  // if confeti gets past height, reset position
        }
      }
    }
  }
}
