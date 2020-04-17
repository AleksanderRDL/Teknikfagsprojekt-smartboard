// Startskærmen
// En klasse fungerer lidt som en indelukket setup og draw funktion, altså et normalt program men i en kapsel

class Startscreen {
  // Dette er området over setup hvor man kan lave de globale variabler der gælder for alle funktionerne under
int xpos = 500;
int ypos = 500;
int xpos2 = 300;
int ypos2 = 300;

PFont font;

  Startscreen() {
    // Det her fungerer som setup den køres 1 gang
    font = createFont("Arial Bold", 30);
    textFont(font);
    
  }
  // Her skrives alle funktionerne
  
  void display() {
    fill(200);
    rect(0, 10, 2300, 200);  
    fill(240);
    ellipse(width/2, height/2, 600,600);
    noStroke();
    
    
    textSize(60);
    fill(255);
text("START MADLAVNING", 850, 130);

fill(30);
textSize(60);
text("TRYK HER", 970, 790);


  }
  
}
