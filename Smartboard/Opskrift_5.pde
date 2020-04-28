// Salat m. kylling

class Opskrift5 extends Opskrift {



  Opskrift5() {
    titel = "Salat m. kylling";
    tid = "20 minutter";
    redskaber = new String [] {"kniv", "skærebræt", "pande", "paletkniv" };
    ing = new String [] {"500 g kylling", "1 spidskål","1/2 agurk", "1 løg", "1 vandmelon", "1/2 pose ærter", "salt og peber" };
    diff = "Nem"; 
    billede = loadImage("Sprites/kyllingesalat.jpg");
    billede.resize(564, 350);
  }
}
