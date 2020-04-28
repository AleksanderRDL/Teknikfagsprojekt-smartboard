// Omelet

class Opskrift2 extends Opskrift {



  Opskrift2() {
    titel = "Omelet m. grøntsager";
    redskaber = new String [] {"pande", "paletkniv", "skærebræt", "skarp kniv", "piskeris", "teske", "rivejern"};
    ing = new String [] {"5 Æg", "1 løg", "1 gulerod", "6 små Tomater", "1 håndfuld bredblader Persille", "Smør eller Kokosolie", "salt og peber"};
    diff = "Nem"; 
    tid = "15 minutter";
    billede = loadImage("Sprites/nemomelet2.jpg");
    billede.resize(564, 350);
  }
}
