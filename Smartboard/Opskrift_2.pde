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
  PImage butter;
  PImage flame;
  //Løg animation 
  PImage kniv, log, logs;
  // Ild animation
  PImage[] flammer = new PImage[3];
  int x1, y1;
  int x;
  int y;
  float x2 = 1060;
  float v = 1;
  int i;
  float s, r;
  String time = "10";
  float mil;
  int t;
  int interval;
  float w;

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
    pan.resize(600, 450);
    butter = loadImage("Sprites/butter.png");
    butter.resize(100, 75);
    //   flame = loadImage("Sprites/flame.png");
    flammer[0] = loadImage("Sprites/flame1.png");
    flammer[1] = loadImage("Sprites/flame2.png");
    flammer[2] = loadImage("Sprites/flame3.png");
    //frameRate(5);

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
          if (segStep == 9) {
            x2 = 930;
            mil = millis();
          }
          if (segStep > 12) {
            segStep = 12;
          }
        } else if (keyCode == LEFT) {
          segStep--;
          if (segStep == 9) {
            mil = millis();
          }
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

      strokeWeight(1);
      image(pil, x2, height/2);
      x2 += v;
      if (x2 <= 940) {
        v *= -1;
      } else if (x2 >= 1060) {
        v= -1;
      }
      image(egg, 1010, 350);
      image(egg2, 1300, height/2);
      image(egg2, 1430, height/2);
      image(egg2, 1560, height/2);
      image(egg2, 1690, height/2);
      image(egg2, 1820, height/2);
      text("Pisk æggene", 500, 225);
      textSize(32);
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
      if (y1==height/2+60) {
        x1-=2;
        y1-=2;
      }
      if (x1==width/2-60) {
        x1= width/2;
        y1= height/2-100;
      }
      image(log, width/2, height/2);
      image(kniv, width/2, y1);
      image(logs, x1-45, 552);



      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 5) {
      // Skær løg
      text("skær løg", 950, 220);
      for (float i = 0; i < 6.25; i += 0.25) {
        arc(width/2, height/2, 500, 500, i, i+0.1);
      }
      for (int i = height/2-250; i < height/2+250; i = i+50) {
        for (int j = width/2-250; j < width/2+260; j = j+60) {
          line(j, i+35, j, i);
        }
      }



      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 6) {
      // Halver tomater
      text("Halver tomater", 950, 220);
      for (float i = 0; i < 6.25; i += 0.25) {
        arc(width/2, height/2, 500, 500, i, i+0.1);
      }
      for (int i = height/2-250; i < height/2+250; i = i+50) {
        for (int j = width/2; j < width/2+25; j = j+60) {
          line(j, i+35, j, i);
        }
      }
      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 7) {
      // Hak persille groft
      text("Hak persille", 950, 220);
  for (float i = 0; i < 6.25; i += 0.25) {
        arc(width/2, height/2, 800, 300, i, i+0.1);
      }
      for (int i = height/2-150; i < height/2+150; i = i+50) {
        for (int j = width/2-400; j < width/2+410; j = j+60) {
          line(j, i+35, j, i);
        }

      }
      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 8) {
      // Opvarm smør eller kokosolie i en pande
      // Aleksander
      text("Opvarm smøren i en pande", width/2, 200);
      image(flammer[i], width/2, 750);
      s += 0.1;
      if (s > 1) {
        i++;
        s = 0;
      }

      if (i > 2) {
        i = 0;
      }
      image(pan, 975, height/2-50);
      r += 0.05;
      pushMatrix();
      translate(975, height/2);
      rotate(r);
      image(butter, 50, 0);
      popMatrix();

      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 9) {
      // Hæld æggene ud over og lad æggene fæstne sig i bunden. Bare lige 2-3 minutter eller sådan.
      // Aleksander
      image(flammer[i], 490, 750);
      s += 0.1;
      if (s > 1) {
        i++;
        s = 0;
      }

      if (i > 2) {
        i = 0;
      }
      image(pan, 500, height/2-50);
      for (float i = 0; i < 6.25; i += 0.25) {
        arc(1400, height/2, 500, 500, i, i+0.1);
      }
      textSize(25);
      text("Hæld æggene ud på panden med smør", 950, 615);
      textSize(50);
      text("Æggeskål", 1400, 550);
      image(pil, x2, height/2);
      x2 += v;
      if (x2 <= 900) {
        v *= -1;
      } else if (x2 >= 980) {
        v= -1;
      }
      interval = 180;

      t = interval-int((millis()-mil)/1000);
      time = nf(t, 3);
      textSize(35);
      text(time, 975, 255);
      w = map(t, 180, 0, -HALF_PI, PI+HALF_PI);
      strokeWeight(48);
      stroke(#0EC941);
      arc(975, 250, 150, 150, -HALF_PI, w);
      stroke(0);
      strokeWeight(5);
      ellipse(975, 250, 200, 200);
      strokeWeight(2);
      textSize(50);
      text("Lad æggene fæstne sig på panden i 3 min", 975, 120);
      textSize(25);
      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 10) {
      // Skru langt ned for varmen og fordel alle grøntsagerne ovenpå æggene. Drys med salt og peber
      // Aleksander


      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 11) {
      // Læg låg på og lad omeletten passe sig selv i 10 minutter.


      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 12) {
      // Alarm går, de 10 min er gået, wuuu du er done


      text("Segment:"+segStep, 1800, 40);
    }
  }
}

//int r = int(random(0,2));
