// Omelet

class Opskrift2 extends Opskrift {



  Opskrift2() {
    titel = "Omelet m. grøntsager";
    redskaber = new String [] {"pande", "paletkniv", "skærebræt", "skarp kniv", "piskeris", "teske"};
    ing = new String [] {"5 Æg", "1/2 Rødløg", "1 Gulerod", "6 små Tomater", "1 håndfuld bredblader Persille", "1 tsk Karrypulver", "1 tsk Gurkemejepulver", "Smør eller Kokosolie", "salt og peber"};
    diff = "Nem"; 
    tid = "15 minutter";
    billede = loadImage("Sprites/nemomelet2.jpg");
    billede.resize(564, 350);
  }
}
