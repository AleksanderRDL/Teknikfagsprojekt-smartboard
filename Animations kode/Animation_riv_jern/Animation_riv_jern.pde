PImage Riv;
PImage carrot;
PImage peelcarrot;
int x, dx, y;

void setup() {
  size(1000,1000);
  imageMode(CENTER);
  carrot = loadImage("Sprites/carrot.png");
  Riv = loadImage("Sprites/Riv.png");
  x=(width/2-30);
}

void draw () {
  background(255);
  x += 1;
  if (x>(height/2)+65) {
    x=(height/2-65);
  }
  image(Riv, width/2, height/2);
  image(carrot, width/2-50, x);
}
