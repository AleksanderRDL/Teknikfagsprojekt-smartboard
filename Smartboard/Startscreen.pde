// Startskærmen
class Startscreen {
  Startscreen() {
    textMode(CENTER);
    textAlign(CENTER);
    ellipseMode(CENTER);
  }
  void display() {
    // Layout af startskærmen
    noStroke();
    rectMode(CORNER);
    fill(80);
    rect(0, 0, 2300, 150);  
    fill(255);
    ellipse(width/2, 550, 350, 350);

    textSize(60);
    fill(255);
    textFont(titel);
    text("START MADLAVNING", width/2, 100);

    fill(0);
    textSize(50);
    text("TRYK HER", width/2, 560);
  }
  void update() {
    // Bliver der trykket på knappen?
    if (dist(mouseX, mouseY, width/2, 550) < 350/2  && mousePressed) {
      state = 1;
    }
  }
}
