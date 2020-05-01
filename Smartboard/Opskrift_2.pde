// Omelet

class Opskrift2 extends Opskrift {
  float cooldown = 0;
  PFont font;
  PImage handcarrot, Riv, carrot;
  PImage peelcarrot;
  PImage wash;
  PImage pil;
  int x;
  int y;
  int y2 = 300;
  Opskrift2() {
    wash = loadImage("Sprites/washhands.JPG");
    wash.resize(300, 400);
    pil = loadImage("Sprites/Arrow.png");
    pil.resize(200, 100);
    font = createFont("Ink Free", 30);
    titel = "Omelet m. grøntsager";
    redskaber = new String [] {"pande", "paletkniv", "skærebræt", "skarp kniv", "piskeris", "teske", "rivejern"};
    ing = new String [] {"5 æg", "1 løg", "1 gulerod", "6 små tomater", "1 håndfuld persille", "smør eller kokosolie", "salt og peber"};
    diff = "Nem"; 
    tid = "15 minutter";
    billede = loadImage("Sprites/nemomelet2.jpg");
    billede.resize(564, 350);
    handcarrot = loadImage("Sprites/peelcarrot1.png");
    peelcarrot = loadImage("Sprites/carrotpeeler.png");
    carrot = loadImage("Sprites/carrot.png");
    Riv = loadImage("Sprites/Riv.png");
    x=(width/2-30);
    y=(width/2-30);
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
      stroke(0);
      rect(width/2, 600, 700, 850);

      fill(60);
      rect(width/2, 200, 700, 100);

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
      noFill();
      stroke(0);
      strokeWeight(4);
      for (float i = 0; i < 6.25; i += 0.25) {
        arc(width/2, 700, 600, 600, i, i+0.1);
      }
      textSize(55);
      text("Placer skålen her", width/2, 700);
      text("Slå æggene i skålen", 1700, 200);
      textSize(32);
      strokeWeight(1);
      pushMatrix();
      translate(width/2,y2);
      rotate(-HALF_PI);
      image(pil, 0, 0);
      popMatrix();
      y2++;
      if (y2 >= 400) {
        y2 = 300;
      }
    } else if (segStep == 2) {
      text("Skræl gulerod", 950, 220);
      x += 1;
      if (x>(width/2)+75) {
        x=(width/2-30);
      }
      image(handcarrot, width/2, height/2);
      image(peelcarrot, x-20, (height/2)-110);
      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 3) {
      text("Riv gulerod", 950, 220);
      y += 1;
      if (y>(height/2)+65) {
        y=(height/2-65);
      }
      image(Riv, width/2, height/2);
      image(carrot, width/2-50, y);




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
