// Startskærmen
// En klasse fungerer lidt som en indelukket setup og draw funktion, altså et normalt program men i en kapsel

class Startscreen {
  // Dette er området over setup hvor man kan lave de globale variabler der gælder for alle funktionerne under
int xpos = 500;
int ypos = 500;

  Startscreen() {
    // Det her fungerer som setup den køres 1 gang
    
    
  }
  // Her skrives alle funktionerne
  
  void display() {
    rect(xpos, ypos, 100, 100);  // TEST
  }
  
}
