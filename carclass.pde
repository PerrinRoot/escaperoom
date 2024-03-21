class Car {
  float x;
  float y;
  PImage car;
  String dir;
  PImage hotel;
  float hx;  // varible declare
  float hy;

  Car() {
    x=width-width/8;   // set varibles
    y=height/6*5;
    car=loadImage("hero-suv.png");
    car.resize(75, 75);
    dir = "stop";
    hotel=loadImage("98-982199_scary-haunted-house-png.png");
    hotel.resize(200, 200);
    hx=width/9;
    hy=height/6*4;
  }
  void drawCar() {
    image(car, x, y); // draw car
  }
  void drawHotel() {
    image(hotel, hx, hy);  // draw hotel
  }
  void drawRoad() {
    noStroke();  // draw road
    fill(#6A6264);
    rect(0, height/6*5, width, height);
  }
  void moveCar() {
    if (dir ==  "up") {  // move car
      y=y-2;
    }
    if (dir == "down") {
      y=y+2;
    }
    if (dir == "right") {
      x=x+2;
    }
    if (dir=="left") {
      x=x-2;
    }
    if (x+50>width) {
      x=width-50;
    }
    if (x<0) {
      x=0;
    }
    if (y+50>height) {
      y=height-50;  // collision detection for the car
    }
    if (y<height/6*5) {
      y=height/6*5;
    }
  }
  void changeDir(String newdir) {
    dir=newdir;   // save diection into the varible
  }
  void checkHit() {
    if (x<width/9+150) {
      snumber=2;   // if car hits hotel, advance
    }
  }
}
