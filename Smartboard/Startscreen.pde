// Startskærmen
// En klasse fungerer lidt som en indelukket setup og draw funktion, altså et normalt program men i en kapsel

class Startscreen {
  // Dette er området over setup hvor man kan lave de globale variabler der gælder for alle funktionerne under

  PFont font;

  Startscreen() {
    // Det her fungerer som setup den køres 1 gang
    font = createFont("Arial Bold", 30);
    textFont(font);
    textMode(CENTER);
    textAlign(CENTER);
    ellipseMode(CENTER);
  }
  // Her skrives alle funktionerne

  void display() {
    rectMode(CORNER);
    fill(200);
    rect(0, 10, 2300, 200);  
    fill(240);
    ellipse(width/2, 550, 350, 350);
    noStroke();

    textSize(60);
    fill(255);
    text("START MADLAVNING", width/2, 130);

    fill(30);
    textSize(40);
    text("TRYK HER", width/2, 560);
  }
  void update(){
    if(dist(mouseX,mouseY,width/2,550) < 350/2  && mousePressed){
      state = 1;
    }
   
  }
}
