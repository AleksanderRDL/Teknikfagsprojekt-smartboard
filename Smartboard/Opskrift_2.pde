// Omelet

class Opskrift2 extends Opskrift {



  Opskrift2() {
    titel = "Omelet m. grøntsager";
    redskaber = new String [] {"pande", "paletkniv", "skærebræt", "skarp kniv", "piskeris", "teske"};
    ing = new String [] {"5 æg", "1/2 rødløg", "1 gulerod", "6 små tomater", "1 håndfuld bredblader persille", "1 tsk karrypulver", "1 tsk gurkemejepulver", "smør eller kokosolie", "salt og peber"};
    diff = "Nem"; 
    tid = "15 minutter";
    billede = loadImage("Sprites/nemomelet2.jpg");
    billede.resize(564, 350);
  }
}
