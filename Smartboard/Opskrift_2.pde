// Omelet

class Opskrift2 extends Opskrift {
  float cooldown = 0;
PFont font;

  Opskrift2() {
    font = createFont("Ink Free",30);
    titel = "Omelet m. grøntsager";
    redskaber = new String [] {"pande", "paletkniv", "skærebræt", "skarp kniv", "piskeris", "teske", "rivejern"};
    ing = new String [] {"5 Æg", "1 løg", "1 gulerod", "6 små Tomater", "1 håndfuld bredblader Persille", "Smør eller Kokosolie", "salt og peber"};
    diff = "Nem"; 
    tid = "15 minutter";
    billede = loadImage("Sprites/nemomelet2.jpg");
    billede.resize(564, 350);
  }
  void segmenter() {
    if (keyPressed && millis() > cooldown+300) {
      if (key == CODED) {
        if (keyCode == RIGHT) {
          segStep++;
          if (segStep > 10) {
            segStep = 10;
          }
        } else if (keyCode == LEFT) {
          segStep--;
          if (segStep < 0) {
            segStep = 0;
          }
        }
      }
      cooldown = millis();
    }

    if (segStep == 0) {
      fill(255);
      text("FIND INGREDIENSER", width/2, 150);
      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 1) {
      text("Segment:"+segStep, 1800, 40);
      text("HEY", width/2, 500);
    } else if (segStep == 2) {
      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 3) {
      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 4) {
      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 5) {
      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 6) {
      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 7) {
      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 8) {
      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 9) {
      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 10) {
      text("Segment:"+segStep, 1800, 40);
    }
  }
}

//int r = int(random(0,2));
