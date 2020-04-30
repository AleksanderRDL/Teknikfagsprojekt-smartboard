// Interaktiv skærebrætsprojekt - Aleksander, Caroline og Lucas

// Programmering
// Sprint 1: Opsætning af hovedmenu
// Sprint 2: Opsættelse af opskrift objekt
// Sprint 3: Grafik og animation skal loades ind i passende variabler
// Sprint 4: Arduino bevægelsescensor
// Sprint 5: Oprettelse af segmenter
// Sprint 6: Segmenterne programmeres
// Sprint 7: Finjustering og kommentering af kode

import processing.serial.*;

ArrayList<Opskrift> ops = new ArrayList<Opskrift>();
int state = 0;
Startscreen s;
Hmenu hm;
Opskrift2 o2;
int segStep = 0;
PFont font;
PFont titel;

Serial myPort;
String val;

void setup() {
  fullScreen();
  font = createFont("Ink Free", 35);
  titel = createFont("Ink Free", 65);

  // String portName = Serial.list()[0];
  // myPort = new Serial(this, portName, 115200);
  ops.add(new Opskrift1());
  ops.add(new Opskrift2());
  ops.add(new Opskrift3());
  ops.add(new Opskrift4());
  ops.add(new Opskrift5());
  o2 = new Opskrift2();

  s = new Startscreen();
  hm = new Hmenu();
  println(ops.get(0).titel);
}

void draw() {
  if (state == 0) {  // Startskærm
    background(195);
    s.display();
    s.update();
  } else if (state == 1) { // Hovedmenu
    background(195);
    hm.display();  
    //   println("Check");
  } else if (state == 2) {   // Opskrifter
    background(#E0903F);
    o2.segmenter();
  }
  // Arduino
  /* if (myPort.available()>0) {
   val=myPort.readStringUntil('\n');
   } */
}
