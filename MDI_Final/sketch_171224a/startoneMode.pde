void startoneMode() {
  image(pic05, 0, 0, 595, 841);
  image(pic04, 0, 600, 100, 100);
  if (sval == 0) {
    counter=counter+6;
    //println("colck is ticking: " + counter);
  } else {
    counter = 0;
    b = 0;
  }
  if (b < 350 && counter > 0) {
    b = b+5;
    image(pic06, 120+b, 610, 60, 60); //moving
  }else{
  drawGif(120+b, 610); //broken heart
  }
  if (b==350)mode=3;
  //println(val);
}