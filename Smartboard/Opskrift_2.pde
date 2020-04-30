// Omelet

class Opskrift2 extends Opskrift {
  float cooldown = 0;
PFont font;
PImage wash;

  Opskrift2() {
    wash = loadImage("Sprites/washhands.JPG");
    wash.resize(300,400);
    font = createFont("Ink Free",30);
    titel = "Omelet m. grøntsager";
    redskaber = new String [] {"pande", "paletkniv", "skærebræt", "skarp kniv", "piskeris", "teske", "rivejern"};
    ing = new String [] {"5 æg", "1 løg", "1 gulerod", "6 små tomater", "1 håndfuld persille", "smør eller kokosolie", "salt og peber"};
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
      stroke(0);
      rect(width/2,600,700,850);
      
      fill(60);
      rect(width/2,200,700,100);
    
      
      fill(255);
      text("Find nedenstående frem!", 950, 220);
      text("Segment:"+segStep, 1800, 40);
      
      fill(0);
      textAlign(CENTER);
      for (int i = 0; i < ing.length; i++) {
        textSize(32);
        text(ing[i], 950, 700+(i*50));
      }
      
      for (int i = 0; i < redskaber.length; i++) {
        text(redskaber[i], 950, 300+(i*50));
      }
      
      //fill(40);
      //rect(200,820,303,403);
      //image(wash,200,820);
      
      
      
      
      
      
      
      
      
      
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
