PImage carrotPeeler;
PImage carrot;
PImage peelcarrot;
int x, dx, y;

void setup() {
  fullScreen();
  imageMode(CENTER);
  carrot = loadImage("Sprites/peelcarrot1.png");
  peelcarrot = loadImage("Sprites/carrotpeeler.png");
  x=(width/2-30);
}

void draw () {
  background(255);
  x += 1;
  if (x>(width/2)+75) {
    x=(width/2-30);
  }
  image(carrot, width/2, height/2);
  image(peelcarrot, x-20, (height/2)-110);
}
