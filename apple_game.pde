class Apple {
  PImage back;
  float [] ax;   // varible declare
  float [] ay;
  float []aspeed;
  float bx;
  float by;
  boolean [] hit;
  PImage catcher;
  String dir;
  int score;
  boolean win;
  Apple() {
    ax= new float[20];
    ay= new float [20];
    aspeed = new float [20];
    hit = new boolean[20];   // set varibles
    win=false;
    back=loadImage("360_F_159485891_2BAJ56o5UcbA0RG5TaUw7fcclmHv0qvt.jpeg");  // background
    back.resize(width, height);
    for (int k=0; k<ax.length; k=k+1) {  // for loop
      ax[k]=random(0, width);
      ay[k]=random(-height, 0);  // set varibles
      aspeed[k]=random(1, 3);
      hit[k]=false;
      catcher=loadImage("new-england-handcrafted-splint-wood-basket-8073.png");
      catcher.resize(height/3, height/3);
      dir="stop";
      by=width/2;
      score=0;
    }
  }
  void drawApple() {
    image(back, 0, 0);  // draw background
    fill(255);
    textSize(30);
    text("Catch all the apples to advance", width/4, height/6);  // instructions
    for (int k = 0; k<ax.length; k=k+1) {
      if (hit[k]==false) {
        fill(255, 0, 0);
        noStroke();
        ellipse(ax[k], ay[k], 20, 20);  // draw apple
        fill(0, 255, 0);
        arc(ax[k], ay[k]-10, 3, 3, 0, PI);
      }
    }
  }
  void moveApple() {
    for (int k = 0; k<ax.length; k=k+1) {
      ay[k]=ay[k]+aspeed[k];// move apple
      if (ay[k]+10>height) {
        ay[k]=random(-height, 0);  // reset apple positon if missed
        ax[k]=random(0, width);
        aspeed[k]=random(1, 3);
      }
    }
  }
  void drawCatcher() {
    image(catcher, bx, by);  // draw catcher
  }
  void moveCatcher() {
    if (dir == "right") {
      bx=bx+2;  // move catcher
    }
    if (dir=="left") {
      bx=bx-2;
    }
    if (bx<0) {
      bx=0;
    }
    if (bx+height/3>width) {
      bx=width-height/3;
    }
  }
  void changeDir(String newdir) {
    dir=newdir;   // save  new diection into varibles
  }
  void score() {
    textSize(50);
    fill(255);
    text("Score "+score+"", width-width/8, height/6);  // print score
    if (score>=20) {
      background(255);  // advance if won
      snumber=11;
      win=true;
    }
  }
  boolean detect() {
    for (int k=0; k<ax.length; k=k+1) {
      if (hit[k]==false) {  // only once
        if (ay[k]>by&&ax[k]>bx&&ax[k]<bx+height/3) {  // detection system
          hit[k]=true;
          score=score+1;
        }
      }
    }
    return false;
  }
}
