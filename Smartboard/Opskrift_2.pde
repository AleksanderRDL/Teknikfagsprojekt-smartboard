// Omelet

class Opskrift2 extends Opskrift {
  // Alle variablerne brugt til opskriften, står lidt rodet
  float cooldown = 0;
  PFont font;
  PImage handcarrot, Riv, carrot;
  PImage peelcarrot;
  PImage wash;
  PImage pil;
  PImage egg, egg2;
  PImage pan, pan2, lid;
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
    // Billerne loades ind og tilpasses størrelse
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
    pan2 = loadImage("Sprites/pande2.png");
    pan2.resize(600, 450);
    lid = loadImage("Sprites/log.png");
    lid.resize(710, 440);
    butter = loadImage("Sprites/butter.png");
    butter.resize(100, 75);
    flammer[0] = loadImage("Sprites/flame1.png");
    flammer[1] = loadImage("Sprites/flame2.png");
    flammer[2] = loadImage("Sprites/flame3.png");
    billede = loadImage("Sprites/nemomelet2.jpg");
    billede.resize(564, 350);
    handcarrot = loadImage("Sprites/peelcarrot1.png");
    peelcarrot = loadImage("Sprites/carrotpeeler.png");
    carrot = loadImage("Sprites/carrot.png");
    Riv = loadImage("Sprites/Riv.png");
    kniv= loadImage("Sprites/kniv1.png");
    log = loadImage("Sprites/onion.png");
    logs= loadImage("Sprites/logSkrald.png");

    // Opskriftens egenskaber
    font = createFont("Ink Free", 30);
    titel = "Omelet m. grøntsager";
    redskaber = new String [] {"pande", "paletkniv", "skærebræt", "skarp kniv", "piskeris", "teske", "rivejern"};
    ing = new String [] {"5 æg", "1 løg", "1 gulerod", "6 små tomater", "1 håndfuld persille", "smør eller kokosolie", "salt og peber"};
    diff = "Nem"; 
    tid = "15 minutter";

    // Variabler brugt til animaion
    x1= width/2;
    y1= height/2-100;
    x=(width/2-30);
    y=(width/2-30);
  }
  void segmenter() {
    // Kode for skifte segmentrin med piletasterne
    if (keyPressed && millis() > cooldown+300) {
      if (key == CODED) {
        if (keyCode == RIGHT) {
          segStep++;
          if (segStep == 9) {
            x2 = 930;
            mil = millis();
          } else if (segStep == 10) {
            x2 = 1200;
          } else if (segStep == 11) {
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
      // Kode til første segment
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
    } else if (segStep == 1) {
      // kode til segment 1
      text("Segment:"+segStep, 1800, 40);
      noFill();
      stroke(0);
      strokeWeight(4);
      for (float i = 0; i < 6.25; i += 0.25) {
        arc(500, height/2, 500, 500, i, i+0.1);
      }
      textSize(55);
      text("Skål", 500, height/2);
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
      // Kode til segment 2
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
      // Kode til segment 4
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
      // Kode til segment 5
      text("Skær løg", 950, 220);
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
      // Kode til segment 7
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
      // Kode til segment 8
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
      // Kode til segment 9
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
      // Kode til segment 10
      flammer[0].resize(80, 100);
      flammer[1].resize(80, 100);
      flammer[2].resize(80, 100);

      image(flammer[i], 490, 735);
      text("Skru langt ned for varmen", 490, 820);
      s += 0.1;
      if (s > 1) {
        i++;
        s = 0;
      }

      if (i > 2) {
        i = 0;
      }
      image(pan2, 500, height/2-50);
      rect(1500, 550, 300, 300, 20);
      textSize(50);
      text("Gulerod", 1500, 480);
      text("Løg", 1500, 540);
      text("Tomater", 1500, 600);
      text("Persille", 1500, 660);
      textSize(50);
      text("Fordel de hakkede grøntsager ovenpå æggene", width/2, 150);
      textSize(32);
      image(pil, x2, height/2);
      x2 += v;
      if (x2 <= 900) {
        v *= -1;
      } else if (x2 >= 1200) {
        v = -1;
      }

      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 11) {
      // Kode til segment 11
      image(flammer[i], width/2-10, 735);
      s += 0.1;
      if (s > 1) {
        i++;
        s = 0;
      }

      if (i > 2) {
        i = 0;
      }
      image(pan2, width/2, height/2-50);
      image(lid, width/2-15, height/2-15);
      textSize(50);
      text("Læg låg på og lad den passe sig selv 10 min", width/2, 150);
      textSize(30);
      interval = 10;

      t = interval-int((millis()-mil)/1000);
      time = nf(t, 3);
      textSize(35);
      text(time, 1650, 255);
      w = map(t, 600, 0, -HALF_PI, PI+HALF_PI);
      strokeWeight(48);
      stroke(#0EC941);
      arc(1650, 250, 150, 150, -HALF_PI, w);
      stroke(0);
      strokeWeight(3);
      ellipse(1650, 250, 200, 200);
      strokeWeight(2);

      if (t <= 0) {
        segStep++;
      }

      text("Segment:"+segStep, 1800, 40);
    } else if (segStep == 12) {
      // Kode til segment 12 (afslutning)
      textSize(100);
      text("MADEN ER FÆRDIG", width/2, height/2);
      textSize(30);
      text("Segment:"+segStep, 1800, 40);
    }
  }
}
