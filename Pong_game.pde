class Pong {
  float bx;
  float by;
  float xdir;  // declare varibles
  float ydir;
  float dia;
  float pw;
  float ph;
  float px;
  float py;
  boolean win;
  String dir;
  int score;
  Pong() {
    bx=width/2;
    by=height/2;  // set varibles
    xdir=1;
    ydir=1;
    dia=30;
    pw=width/32;
    ph=height/4;
    px=width/8;
    py=height/2;
    win=false;
    dir= "stop";
    score=0;
  }
  void drawBall() {
    background(180);
    noStroke();
    fill(0);
    ellipse(bx, by, dia, dia);  // draw ball
    bx=bx+xdir*6;  // move ball
    by=by+ydir*6;
    if (bx-dia/2<0) {
      score=score-1;   // if you miss ball lose point
      ydir=ydir*1;  // reset ydir
      if (score<0) {
        score=0;  // no negetive
      }
      bx=width/2;
      by=height/2;
    }
    if (bx+dia/2>width) {
      xdir=xdir*-1;  // if it hits the other side win point
      score=score+1;
    }
    if (by+dia/2>height) {
      ydir=ydir*-1;     // rebound the ball
    }
    if (by-dia/2<0) {
      ydir=ydir*-1;
    }
    if ((bx>px)&&(bx<px+pw)&&(by>py)&&(by<py+ph)) {   // collision detection
      xdir=-1*xdir;
      ydir=-1*ydir;
    }
  }
  void drawPaddle() {
    fill(255);
    rect(px, py, pw, ph);  // draw paddle
  }
  void movePaddle() {
    if (dir ==  "up") {
      py=py-4;
    }
    if (dir == "down") {   //move paddle
      py=py+4;
    }
    if (py<0) {
      py=0;
    }
    if (py+ph>height) {
      py=height-ph; // dont let the paddle off the screen
    }
  }
  void score() {
    textSize(50);
    text("Score "+score+"", width-width/8, height/6);   // print the score
    textSize(30);
    text("Score 5 points to win", width/8+width/8, height/6);  // instructions
    if (score>=5) {
      win=true;  // advance scenes
      snumber=11;
    }
  }
  void changeDir(String newdir) {
    dir=newdir;   // save new diection into the varibles
  }
}
