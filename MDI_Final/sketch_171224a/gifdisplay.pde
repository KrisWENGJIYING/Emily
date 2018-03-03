import gifAnimation.*;
Gif loopingGif;

void setupGif() {
  loopingGif = new Gif(this, "heart.gif");
  loopingGif.loop();
}

void drawGif(int x, int y) {
  image(loopingGif, x, y);
}