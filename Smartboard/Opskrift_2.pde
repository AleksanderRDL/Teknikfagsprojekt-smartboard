// Omelet

class Opskrift2 extends Opskrift {
  float cooldown = 0;
  PFont font;
  PImage handcarrot, Riv, carrot;
  PImage peelcarrot;
  PImage wash;
  PImage pil;
  PImage egg, egg2;
  PImage pan;
  PImage flame;
  //Løg animation 
  PImage kniv, log, logs;
  int x1, y1;
  int x;
  int y;
  float x2 = 1060;
  float v = 1;
  Opskrift2() {
    wash = loadImage("Sprites/washhands.JPG");
    wash.resize(300, 400);
    pil = loadImage("Sprites/Arrow.png");
    pil.resize(200, 100);
    egg = loadImage("Sprites/crackegg.png");
    egg.resize(250, 250);
    egg2 = loadImage("Sprites/egg2.png");
    egg2.resize(200, 300);
    pan = loadImage("Sprites/pande.png");
    pan.resize(500, 500);
    flame = loadImage("Sprites/flame.png");
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
    //Løg animation 
    kniv= loadImage("Sprites/kniv1.png");
    log = loadImage("Sprites/onion.png");
    logs= loadImage("Sprites/logSkrald.png");
    x1= width/2;
    y1= height/2-100;

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
        arc(500, height/2, 500, 500, i, i+0.1);
      }
      textSize(55);
      text("Skål", 500, height/2);
      //    text("Slå æggene i skålen", 1700, 200);
      textSize(32);
      strokeWeight(1);
      image(pil, x2, height/2);
      x2 += v;
      if (x2 <= 940) {
        v *= -1;
      } else if (x2 >= 1060) {
        v= -1;
      }
      image(egg, 1025, 350);
      image(egg2, 1300, height/2);
      image(egg2, 1430, height/2);
      image(egg2, 1560, height/2);
      image(egg2, 1690, height/2);
      image(egg2, 1820, height/2);
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
      // Løg segment (Lucas)
      text("Skræl løg", 950, 220);

      y1+=2;
      if (y==height/2+60) {
        x1-=2;
        y1-=2;
      }


      if (x1==width/2-60) {
        x1= width/2;
        y1= height/2-100;
      }
      image(log, width/2, height/2);
      image(kniv, width/2, y1);
      image(logs, x1-45, height/2);



      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 5) {
      // Halver tomater og hak persille groft



      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 6) {
      // Opvarm smør eller kokosolie i en pande
      text("ShAkE", width/2, height/2);
      image(flame, width/2, 800);
      image(pan, width/2, height/2);


      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 7) {
      // Hæld æggene ud over og lad æggene fæstne sig i bunden. Bare lige 2-3 minutter eller sådan.



      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 8) {
      // Skru langt ned for varmen og fordel alle grøntsagerne ovenpå æggene. Drys med salt og peber


      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 9) {
      // Læg låg på og lad omeletten passe sig selv i 10 minutter.


      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 10) {
      // Alarm går, de 10 min er gået, wuuu du er done


      text("Segment:"+segStep, 1800, 40);
    }
  }
}

//int r = int(random(0,2));
