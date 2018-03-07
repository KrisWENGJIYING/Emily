int checkStates(float _bx,float _by,float _w,float _h){
  int result = 0;
  if (mouseX > _bx && mouseX < _bx+_w &&
    mouseY >_by && mouseY <_by+_h) {
      result = 1;
      if (mousePressed) {
        result = 2;
      }
     } else {
    result = 0;
    }
     return result;
    }
    
color brnColor = color(100);
float bx, by ,w ,h;

void setup(){
  size(500,500);
  noStroke();
  bx = width/2;
  by = height/2;
  w = 50;
  h = 50;
}
void draw(){
  for(int by = 0; by < height; by +=2*h){
    for(int bx = 0; bx < width; bx +=2*w){
 
int check = checkStates(bx,by,w,h);
    switch(check) {
    case 0:
      brnColor = color(100);
      break;
    case 1:
      brnColor = color(255, 0, 0);
      break;
    case 2:
      brnColor = color(random(255), random(255), random(255));
      break;
    }
    fill(brnColor);
 rect(bx,by,w,h);
    }
  }
}