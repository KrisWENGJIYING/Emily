int a=0;
int b=0;
int mode=0;
int counter = 0;
PImage pic01, pic02, pic03, pic04, pic05, pic06, pic07;
void setup() {
  size(595, 841);
  pic01=loadImage("pic01.jpg");
  pic02=loadImage("pic02.jpg");
  pic03=loadImage("pic03.jpg");
  pic04=loadImage("pic04.png");
  pic05=loadImage("pic05.png");
  pic06=loadImage("pic06.png");
  //pic07=loadImage("pic07.png");
  textSize(140);
  textAlign(CENTER);
  setupGif();
  setupSerial();
}
void draw() {
  runSerial();
  //println(width + " : " + height);
  switch(mode) {
  case 0:
    loadMode();
    break;
  case 1 : 
    startMode();
    break;
  case 2 : 
    startoneMode();
    break;
  case 3 :
    gameMode();
    break;
  }
}