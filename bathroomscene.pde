class Bathroom {
  PImage door;
  PImage window;  // varible declare
  PImage mag;
  PImage desk;
  PImage tub2;
  PImage back;
  PImage clock;
  PFont text;
  boolean show;
  float cx;
  float cy;
  float cdia;
  boolean one;
  boolean two;
  float tx;
  float ty;
  int time;
  boolean three;
  boolean four;
  boolean five;
  boolean six;
  boolean seven;
  boolean eight;
  boolean nine;
  PImage tub;
  float cdia2;
  float cx2;
  float cy2;
  boolean magshow;
  boolean win;
  PImage lamp;
  float cdia3;
  Bathroom() {
    door= loadImage("58-581997_white-door-png-clipart.png");  // load varibles and images
    door.resize(width/5, height/2);
    back=loadImage("istockphoto-963477194-612x612.jpeg");
    back.resize(width, height);
    show=false;
    cx=width/4+width/4-width/16+width/4;
    cy=height/3+height/16-height/30;
    cdia=30;
    text=loadFont("EuphemiaUCAS-48.vlw");
    tx=width/2-height/3+width/32;
    ty=height/6;
    one=false;
    two=false;
    three=false;
    four=false;
    five=false;
    six=false;
    seven=false;
    eight=false;
    nine=false;
    time=0;
    tub=loadImage("2647202020.png");
    tub.resize(height/2, height/2);
    clock=loadImage("image_processing20200410-18222-1m0tg4u.png");
    clock.resize(width/8, width/8);
    tub2=loadImage("2391202-princeton-60-inch-by-30-inch-integral-apron-bathtub.png");
    tub2.resize(width, height);
    cdia2=30;
    cx2=width-width/16;
    cy2=width/16;
    desk=loadImage("igestshu0h8ww9hkldmd_600x.png");
    desk.resize(width/4, height/3);
    mag=loadImage("2cd43b_9fb630e0f00d4dc5afee27ad89170a68_mv2.png");
    mag.resize(width/8, height/6);
    magshow=true;
    win=false;
    lamp=loadImage("arn3655vil_6.png");
    lamp.resize(100, 100);
    cdia3=width/2;
    window=loadImage("50-50-raised-panel-louver-combination-shutter-colonial-blue.png");
    window.resize(200, 200);
  }
  void drawScene() {
    background(255);  // draw the scene
    image(back, 0, width/2);
    strokeWeight(3);
    stroke(0);
    image(door, width/2, width/8+width/32);
    noStroke();
    fill(#5A5953);
    rect(width/2-width/40, height/2-height/40, 20, 20);
    if (show==true) {
      snumber=2;
    }
  }
  void keyPad() {
    if ((mouseX>width/2-width/40)&&(mouseX<width/2-width/40+20)&&(mouseY>height/2-height/40)&&(mouseY<height/2-height/40+20)) {  // detect if the code is pressed
      snumber=4;
    }
  }
  void keyPresser() {
    noStroke();
    fill(#5A5953);
    rect(width/3, height/3, height/2, height/2);
    fill(255, 0, 0);
    ellipse(cx, cy, cdia, cdia);
    textSize(40);
    fill(0);
    text("x", width/4+width/4-width/16+width/4, height/3+height/16-height/30+height/60);   // escape if got something wrong
    strokeWeight(3);
    fill(255);
    rect(width/3+width/16, height/3+width/16, width/16, width/16); //1
    fill(0);
    textFont(text, 50);
    text("1", width/3+width/16+width/32, height/3+width/16+width/20);
    fill(255);
    rect(width/3+width/16+width/10, height/3+width/16, width/16, width/16);  //2   // all different numbers
    rect(width/3+width/16+width/10+width/10, height/3+width/16, width/16, width/16);  //3
    rect(width/3+width/16, height/3+width/16+width/10, width/16, width/16); //4
    rect(width/3+width/16+width/10, height/3+width/16+width/10, width/16, width/16);//5
    rect(width/3+width/16+width/10+width/10, height/3+width/16+width/10, width/16, width/16);  //6
    rect(width/3+width/16, height/3+width/16+width/10+width/10, width/16, width/16); //7
    rect(width/3+width/16+width/10, height/3+width/16+width/10+width/10, width/16, width/16); //8
    rect(width/3+width/16+width/10+width/10, height/3+width/16+width/10+width/10, width/16, width/16);//9
    fill(0);
    text("2", width/3+width/16+width/10+width/32, height/3+width/16+width/20);
    text("3", width/3+width/16+width/10+width/10+width/32, height/3+width/16+width/20);
    text("4", width/3+width/16+width/32, height/3+width/16+width/10+width/20);   // identify those numbers
    text("5", width/3+width/16+width/10+width/32, height/3+width/16+width/10+width/20);
    text("6", width/3+width/16+width/10+width/10+width/32, height/3+width/16+width/10+width/20);
    text("7", width/3+width/16+width/32, height/3+width/16+width/10+width/10+width/20);
    text("8", width/3+width/16+width/10+width/32, height/3+width/16+width/10+width/10+width/20);
    text("9", width/3+width/16+width/10+width/10+width/32, height/3+width/16+width/10+width/10+width/20);
    text("1", tx, ty);
    text("2", tx+50, ty);
    text("3", tx+100, ty);
    text("4", tx+150, ty);
    text("5", tx+200, ty);   // draw the viewing of the code
    text("6", tx+250, ty);
    text("7", tx+300, ty);
    text("8", tx+350, ty);
    text("9", tx+400, ty);
  }
  void leaveDetect() {
    float d=dist(mouseX, mouseY, cx, cy);  // if circle is pressed, leave
    if (d<cdia/2) {
      snumber=3;
      one=false;  // reset all booleans
      two=false;
      three=false;
      four=false;
      five=false;
      six=false;
      seven=false;
      eight=false;
      nine=false;
    }
  }
  void password() {
    if (mouseX>width/3+width/16&&mouseX<width/3+width/16+width/16&&mouseY>height/3+width/16&&mouseY<height/3+width/16+width/16) {   // collision detection system
      one=true;
    }
    if (mouseX>width/3+width/16+width/10&&mouseX<width/3+width/16+width/10+width/16&&mouseY>height/3+width/16&&mouseY<height/3+width/16+width/16) {
      two=true;
    }
    if (mouseX>width/3+width/16+width/10+width/10&&mouseX<width/3+width/16+width/10+width/10+width/16&&mouseY>height/3+width/16&&mouseY<height/3+width/16+width/16) {
      three=true;
    }
    if (mouseX>width/3+width/16&&mouseX<width/3+width/16+width/16&&mouseY>height/3+width/16+width/10&&mouseY<height/3+width/16+width/10+width/16) {
      four=true;
    }
    if (mouseX>width/3+width/16+width/10&&mouseX<width/3+width/16+width/10+width/16&&mouseY>height/3+width/16+width/10&&mouseY<height/3+width/16+width/10+width/16) {
      five=true;
    }
    if (mouseX>width/3+width/16+width/10+width/10&&mouseX<width/3+width/16+width/10+width/10+width/16&&mouseY>height/3+width/16+width/10&&mouseY<height/3+width/16+width/10+width/16) {
      six=true;
    }
    if (mouseX>width/3+width/16&&mouseX<width/3+width/16+width/16&&mouseY>height/3+width/16+width/10+width/10&&mouseY<height/3+width/16+width/10+width/10+width/16) {
      seven=true;
    }
    if (mouseX>width/3+width/16+width/10&&mouseX<width/3+width/16+width/10+width/16&&mouseY>height/3+width/16+width/10+width/10&&mouseY<height/3+width/16+width/10+width/10+width/16) {
      eight=true;
    }
    if (mouseX>width/3+width/16+width/10+width/10&&mouseX<width/3+width/16+width/10+width/10+width/16&&mouseY>height/3+width/16+width/10+width/10&&mouseY<height/3+width/16+width/10+width/10+width/16) {
      nine=true;
    }
  }
  boolean number() {   // set boolean functions for each number
    if (one==true) {
      fill(#F7D214);
      textFont(text, 50);
      text("1", tx, ty);
    }
    return(false);
  }
  boolean number2() {
    if (two==true) {
      fill(#F7D214);
      textFont(text, 50);
      text("2", tx+50, ty);
    }
    return(false);
  }
  boolean number3() {
    if (three==true) {
      fill(#F7D214);
      textFont(text, 50);
      text("3", tx+100, ty);
    }
    return(false);
  }
  boolean number4() {
    if (four==true) {
      fill(#F7D214);
      textFont(text, 50);
      text("4", tx+150, ty);
    }
    return(false);
  }
  boolean number5() {
    if (five==true) {
      fill(#F7D214);
      textFont(text, 50);
      text("5", tx+200, ty);
    }
    return(false);
  }
  boolean number6() {
    if (six==true) {
      fill(#F7D214);
      textFont(text, 50);
      text("6", tx+250, ty);
    }
    return(false);
  }
  boolean number7() {
    if (seven==true) {
      fill(#F7D214);
      textFont(text, 50);
      text("7", tx+300, ty);
    }
    return(false);
  }
  boolean number8() {
    if (eight==true) {
      fill(#F7D214);
      textFont(text, 50);
      text("8", tx+350, ty);
    }
    return(false);
  }
  boolean number9() {
    if (nine==true) {
      fill(#F7D214);
      textFont(text, 50);
      text("9", tx+400, ty);
    }
    return(false);
  }
  void detect() {
    // code is 2478
    if (one==false&&two==true&&three==false&&four==true&&five==false&&six==false&&seven==true&&eight==true&&nine==false) {  // if the code is true
      snumber=2;  // advance
      one=false;
      two=false;
      three=false;
      four=false;   // reset booleans
      five=false;
      six=false;
      seven=false;
      eight=false;
      nine=false;
      win=true;
    }
  }
  void drawTub() {
    image(tub, 0, width/2.5);  // draw images in the scene
  }
  void drawClock() {
    image(clock, width/8, height/3);
  }
  void detectTub() {
    if (mouseX>0&&mouseX<height/2&&mouseY>width/2.5&&mouseY<width/2.5+height/2) {  // detect these images
      snumber=6;
    }
  }
  void birdTub() {
    image(back, 0, 0);
    image(tub2, 0, height/12);
    noStroke();
    fill(255);
    rect(width/2, width/2-width/16, width/10, width/7);   // if the tub is clicked, draw this scene
    fill(255, 0, 0);
    ellipse(cx2, cy2, cdia2, cdia2);
    fill(0);
    textFont(text, 20);
    text("X", width-width/16, width/16+width/75);
    if (magshow==true) {
      image(mag, width/2-height/6, width/2-width/16);
    }
  }
  void detectMag() {
    if (mouseX>width/2-height/6&&mouseX<width/2-height/6+width/8&&mouseY>width/2-width/16&&mouseY<width/2-width/16+height/6) {   // detect if the maginifying is clicked
      magshow=false;
    }
  }
  void detectLeave() {
    float d=dist(mouseX, mouseY, cx2, cy2);  // detect a leave of the tub
    if (d<cdia2) {
      snumber=3;
    }
  }
  void detectLetter() {
    if (mouseX>width/2&&mouseX<width/2+width/10&&mouseY>width/2-width/16&&mouseY<width/2-width/16+width/7) {  // detect the letter
      snumber=7;
    }
  }
  void drawLetter() {
    image(back, 0, 0);
    image(tub2, 0, height/12);
    noStroke();
    fill(255);   // draw scene
    rect(width/8, height/6, width/2, height);
    fill(0);
    textFont(text, 20);
    text("i give My best wIshes to your New career", width/8+width/4, height/6+width/32);   // code in writing
    text("i UnderesTimatEd your abilities", width/8+width/4, height/6+width/32+width/16);
    text("all my thanks, mat", width/8+width/4, height/6+width/32+width/16+width/16);
  }
  void drawDesk() {
    image(desk, width/2+width/8, height/2);  // draw things in the scene
  }
  void detectDesk() {
    if (mouseX>width/2+width/8&&mouseX<width/2+width/8+width/4&&mouseY>height/2&&mouseY<height/2+height/3) {  // detect the desk
      snumber=8;
    }
  }
  void zoomIn() {
    noStroke();
    fill(#AFAFAF);
    rect(width/2, height/6, width/2, width/2);   // if the desk is clicked, zoom in
    textFont(text, 50);
    text("7", width/2+width/8, height/6+height/3);
  }
  void magnify() {
    if (magshow==false) {  // if the maginifying glass was clicked, then allow function to work
      noCursor();
      strokeWeight(1);
      stroke(#B79E1E);
      fill(0, 0, 0, 100);
      ellipse(mouseX, mouseY, 50, 50);
      float d=dist(mouseX, mouseY, width/2+width/8, height/6+height/3);
      if (d<50/2) {
        fill(#E7E823);
        text("7", width/2+width/8, height/6+height/3);  // detect number
      }
    }
  }
  void magLeave() {
    if (mouseX>width/2&&mouseX<width/2+width/2&&mouseY>height/6&&mouseY<height/6+width/2) {
      snumber=8;
    } else {
      snumber=3;   // if clicked off, exit
      cursor();
    }
  }
  void exitLetter() {
    if (mouseX>width/8&&mouseX<width/8+width/2&&mouseY>height/6&&mouseY<height/6+height) {
      snumber=7;
    } else {    // if clicked off leter, exit
      snumber=6;
    }
  }
  void drawLamp() {
    image(lamp, width/2+width/8+width/16, height/2-width/16-width/40);  // draw lamp
  }
  void detectLamp() {
    if (mouseX>width/2+width/8+width/16&&mouseX<width/2+width/8+width/16+width/8&&mouseY>height/2-width/16-width/40&&mouseY<height/2-width/16-width/40+height/6) {   // detect lamp
      snumber=9;
    }
  }
  void drawBottom() {
    fill(#C9C3C3);
    ellipse(width/2, height/2, width/2, width/2);   // draw the bottom
  }
  void drawRiddle() {
    fill(0);
    textSize(20);
    text("Turn Me On My Side", width/2-height/3+width/16+width/16+width/16+width/16, height/2-height/8-height/16);  // riddle
    text("Im Everything", width/2-height/3+width/4, height/2-height/12);
    textSize(20);
    text("Cut Me In Half", width/2-height/3+width/4, height/2);
    textSize(40);
    text("Im Nothing", width/2-height/3+width/4, height/2+height/8);
  }
  void detectExit() {
    float d= dist(mouseX, mouseY, width/2, height/2);
    if (d<cdia3/2) {
      snumber=9;  // if clicked off image, leave
    } else {
      snumber=3;
    }
  }
  void drawCode() {
    fill(0);
    textSize(70);
    text("- .-- ---", width/3, height/6);  // draw moris code, is 2
  }
  void drawWindow() {
    image(window, width/2+width/4, height/6);   // draw window
  }
}
